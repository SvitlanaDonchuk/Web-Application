package com.example.web.encoder;

import org.hamcrest.Matchers;
import org.junit.Assert;
import org.junit.Test;

public class LocalPasswordEncoderTest {

    @Test
    public void encode() {
        LocalPasswordEncoder encoder = new LocalPasswordEncoder();

        Assert.assertEquals("secret: 'mypwd'", encoder.encode("mypwd"));
        Assert.assertThat(encoder.encode("mypwd"), Matchers.containsString("mypwd"));
    }
}