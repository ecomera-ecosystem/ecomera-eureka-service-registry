package com.youssef.ecomera_eureka_service_registry;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.server.EnableEurekaServer;

@EnableEurekaServer
@SpringBootApplication
public class EcomeraEurekaServiceRegistryApplication {

	public static void main(String[] args) {
		SpringApplication.run(EcomeraEurekaServiceRegistryApplication.class, args);
	}

}
