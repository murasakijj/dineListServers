package test;

import static org.junit.Assert.*;

import org.junit.jupiter.api.Test;

import sample.Calculator;

class TestCalculator {

	@Test
	public void testMultiplyMethod() {
		Calculator calc = new Calculator();
		int result = 12;
		int arg1 = 3;
		int arg2 = 4;
		int actual = calc.multiply(arg1, arg2);
		assertEquals(actual, result);
	}

}
