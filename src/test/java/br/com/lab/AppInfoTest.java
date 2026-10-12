package br.com.lab;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;

class AppInfoTest {

    @Test
    void deveRetornarNomeDaAplicacao() {
        assertEquals("Java Web Lab", AppInfo.getName());
    }

    @Test
    void deveRetornarVersaoCorreta() {
        assertEquals("1.0.0", AppInfo.getVersion());
    }

    @Test
    void deveRetornarStatusOnline() {
        assertEquals("ONLINE", AppInfo.getStatus());
    }
}
