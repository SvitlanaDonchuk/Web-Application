package com.example.web.encoder;

import org.springframework.security.crypto.password.PasswordEncoder;

public class LocalPasswordEncoder implements PasswordEncoder {
    @Override
    public String encode(CharSequence charSequence) {
        return String.format("secret: '%s'", charSequence);
    }

    @Override
    public boolean matches(CharSequence charSequence, String s) {
        return false;
    }

    @Override
    public boolean upgradeEncoding(String encodedPassword) {
        return false;
    }
}
