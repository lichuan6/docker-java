package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class DemoApplication {

    @RequestMapping("/")
    public String home() {
      return "Hello Docker World";
    }

    @RequestMapping("/throw")
    public String throwException() {
        throw new RuntimeException("This is a test exception");
    }

	public static void main(String[] args) {
		SpringApplication.run(DemoApplication.class, args);
	}

}
