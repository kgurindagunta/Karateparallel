package com.runner;



import org.junit.jupiter.api.Test;

import com.intuit.karate.Results;

public class Parallel {
	
	@Test
	public void testParallel() {
		Results results = com.intuit.karate.Runner.path("classpath:requests1").parallel(5);
	}


}
