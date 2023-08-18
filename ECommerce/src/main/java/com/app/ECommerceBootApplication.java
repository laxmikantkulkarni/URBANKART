package com.app;

import org.modelmapper.ModelMapper;
import org.modelmapper.convention.MatchingStrategies;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

@SpringBootApplication
//consists of @SpringBootConfiguration + @enableautomaticconfiguration + @ComponentScan(basepackages="com.app")
public class ECommerceBootApplication {

	public static void main(String[] args) {
		SpringApplication.run(ECommerceBootApplication.class, args);
	}
	@Bean // equivalent to <bean id ..../> in xml file
	public ModelMapper mapper() {
		ModelMapper modelMapper = new ModelMapper();
		modelMapper.getConfiguration().setMatchingStrategy(MatchingStrategies.STRICT);
		return modelMapper;
	}//MatchingStrategies.STRICT->source property and data type must be match then only mapping will be done

}
