# Ecomera Eureka Service Registry

![Java](https://img.shields.io/badge/Java-17-orange?logo=openjdk)
![Spring Boot](https://img.shields.io/badge/Spring%20Boot-3.5.10-brightgreen?logo=springboot&logoColor=white)
![Spring Cloud](https://img.shields.io/badge/Spring%20Cloud-2025.0.1-6DB33F?logo=spring&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-Ready-2496ED?logo=docker&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-yellow?logo=open-source-initiative&logoColor=white)
![Eureka](https://img.shields.io/badge/Eureka-Server%20Running-6DB33F?logo=spring&logoColor=white)

[//]: # (![CI/CD]&#40;https://img.shields.io/github/actions/workflow/status/ecomera-ecosystem/ecomera-eureka-service-registry/ci.yml?logo=githubactions&label=CI/CD&#41;)


Service discovery server for the Ecomera microservices ecosystem using Netflix Eureka.

## Overview

Centralized service registry that enables microservices to discover and communicate with each other without hardcoding hostnames and ports.

## Tech Stack

- **Spring Boot**: 3.5.10
- **Spring Cloud**: 2025.0.1
- **Netflix Eureka Server**: Service discovery and registration

## Running Locally

### Prerequisites
- Java 17+
- Maven 3.6+

### Start the Server
```bash
mvn spring-boot:run
```

The Eureka dashboard will be available at: `http://localhost:8761`

## Configuration

| Property | Default | Description |
|----------|---------|-------------|
| `server.port` | 8761 | Eureka server port |
| `eureka.instance.hostname` | localhost | Eureka instance hostname |

## Docker Support
```bash
docker build -t ecomera-eureka-service-registry .
docker run -p 8761:8761 ecomera-eureka-service-registry
```

## Related Services

**Infrastructure:**
- [API Gateway](https://github.com/ecomera-ecosystem/ecomera-api-gateway)
- [Config Server](https://github.com/ecomera-ecosystem/ecomera-config-server)
- [Ecomera Infrastructure](https://github.com/ecomera-ecosystem/ecomera-infrastructure)

[//]: # (**Microservices:**)
[//]: # (- [Auth Service]&#40;https://github.com/ecomera-ecosystem/ecomera-auth-service&#41; ![Status]&#40;https://img.shields.io/badge/status-planned-lightgrey&#41;)

[//]: # (- [Order Service]&#40;https://github.com/ecomera-ecosystem/ecomera-order-service&#41; ![Status]&#40;https://img.shields.io/badge/status-in%20progress-yellow&#41;)

[//]: # (- [Product Service]&#40;https://github.com/ecomera-ecosystem/ecomera-product-service&#41; ![Status]&#40;https://img.shields.io/badge/status-stable-brightgreen&#41;)


## License

MIT License - see [LICENSE](LICENSE) file for details