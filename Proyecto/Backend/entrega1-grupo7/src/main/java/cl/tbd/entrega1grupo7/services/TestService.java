package cl.tbd.entrega1grupo7.services;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TestService {

	@GetMapping("/hello")
	public String HelloWorld(){
    	return "Hello World";
	}
}
