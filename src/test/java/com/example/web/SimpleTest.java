package com.example.web;

import org.junit.Test;
import org.junit.Assert;


public class SimpleTest {

    @Test
    public void test(){
        int x = 2;
        int y = 23;

        Assert.assertEquals(46, x * y);
        Assert.assertEquals(25, x + y);
    }

    @Test(expected = ArithmeticException.class)
    public void error() {
        int i = 0;
        int il = 1 / i;
    }
}
