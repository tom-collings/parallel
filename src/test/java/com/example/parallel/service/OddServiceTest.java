package com.example.parallel.service;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class OddServiceTest {

    @Test
    public void testOdd() {
        OddService oddService = new OddService();
        assertTrue(oddService.returnOdd()%2 == 1);
    }

}