package requests1;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class Runner {
	
	//@Test
	public Karate run() {
		return Karate.run("delete").relativeTo(getClass());
	}

	
	@Test
	public Karate runner() {
		return Karate.run().relativeTo(getClass());
		
	}
}
