# ===========================
# STAGE 1 — BUILD
# ===========================
FROM eclipse-temurin:17-jdk-alpine AS builder

WORKDIR /app

COPY mvnw .
RUN chmod +x mvnw
COPY .mvn .mvn
COPY pom.xml .

RUN ./mvnw -q dependency:go-offline -B

COPY src src
RUN ./mvnw clean package -DskipTests

# ===========================
# STAGE 2 — RUNTIME
# ===========================
FROM eclipse-temurin:17-jre-alpine

LABEL version="0.1.0"
LABEL description="Ecomera Eureka Service Registry"
LABEL maintainer="youssef.ammari.795@gmail.com"

RUN addgroup -S appgroup && adduser -S appuser -G appgroup

WORKDIR /app
RUN mkdir -p /app && chown appuser:appgroup /app

COPY --from=builder --chown=appuser:appgroup /app/target/*.jar app.jar

USER appuser

EXPOSE 8761

HEALTHCHECK --interval=30s --timeout=3s --start-period=40s --retries=3 \
  CMD wget --no-verbose --tries=1 --spider http://localhost:8761/actuator/health || exit 1

ENTRYPOINT ["java", "-jar", "app.jar"]