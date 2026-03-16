# Ecomera Eureka Service Registry

![Java](https://img.shields.io/badge/Java-17-orange?logo=openjdk)
![Spring Boot](https://img.shields.io/badge/Spring%20Boot-3.5.11-brightgreen?logo=springboot&logoColor=white)
![Spring Cloud](https://img.shields.io/badge/Spring%20Cloud-2025.0.1-6DB33F?logo=spring&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-Ready-2496ED?logo=docker&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-yellow?logo=open-source-initiative&logoColor=white)
[![CI](https://github.com/ecomera-ecosystem/ecomera-eureka-service-registry/actions/workflows/ci.yml/badge.svg)](https://github.com/ecomera-ecosystem/ecomera-eureka-service-registry/actions/workflows/ci.yml)

Service discovery server for the Ecomera microservices ecosystem using Netflix Eureka.

---

## 📋 Overview

Centralized service registry that enables microservices to discover and communicate with each other without hardcoding hostnames and ports. All Ecomera microservices register here for dynamic service discovery.

---

## 🛠️ Tech Stack

- **Spring Boot** 3.5.11
- **Spring Cloud** 2025.0.1
- **Netflix Eureka Server** - Service discovery and registration

---

## 🚀 Running Locally

### Prerequisites
- Java 17+
- Maven 3.6+

### Start the Server
```bash
mvn spring-boot:run
```

**Eureka dashboard:** `http://localhost:8761`

---

## ⚙️ Configuration

### Server Properties

| Property | Default | Description |
|----------|---------|-------------|
| `server.port` | 8761 | Eureka server port |
| `eureka.instance.hostname` | localhost | Eureka instance hostname |
| `eureka.server.enable-self-preservation` | true | Prevents accidental deregistration |

---

## 🔌 Client Usage

Microservices register with Eureka by adding to their `application.yml`:
```yaml
eureka:
  client:
    service-url:
      defaultZone: http://localhost:8761/eureka/
    register-with-eureka: true
    fetch-registry: true
  instance:
    prefer-ip-address: true
```

**Services auto-register on startup and appear in dashboard.**

---

## 📊 Eureka Dashboard

Access at `http://localhost:8761`

**Features:**
- View all registered microservices
- Monitor service health and status
- Check instance metadata
- System and environment information

---

## 🐳 Docker Support

### Build Image
```bash
docker build -t ecomera-eureka-service-registry .
```

### Run Container
```bash
docker run -p 8761:8761 ecomera-eureka-service-registry
```

---

## 🧪 Health Check
```bash
curl http://localhost:8761/actuator/health
```

**Expected response:**
```json
{
  "status": "UP"
}
```

---

## 🔗 Related Services

**Infrastructure:**
- [Config Server](https://github.com/ecomera-ecosystem/ecomera-config-server) - Centralized configuration
- [API Gateway](https://github.com/ecomera-ecosystem/ecomera-api-gateway) - Entry point (planned)

**Microservices:** (Coming Soon)
- Auth Service - Authentication & authorization
- Product Service - Product catalog management
- Order Service - Order processing

---

## 🏗️ Architecture
```
Microservices → Register with Eureka (port 8761)
                     ↓
              Service Discovery
                     ↓
         Services find each other dynamically
```

---

## 📄 License

MIT License - see [LICENSE](LICENSE) file for details