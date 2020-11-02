package com.example.parallel.service;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class EvenServiceTest {

    @Test
    public void testEven() {
        EvenService evenService = new EvenService();
        assertTrue(evenService.returnEven()%2 == 0);
    }

}