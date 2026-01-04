package com.ejemplo.ping.prueba.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.text.SimpleDateFormat;

@RestController
@RequestMapping(path = "/start")
public class PingController {

    /**
     * La siguiente es la url a utilizar en ambiente de desarrollo
     * URL: http://localhost:30300/ejemploPing/start/ping
     * @return
     */
    @GetMapping(path = "/ping")
    public String pingGet(){
        java.util.Date fechaPing = new java.util.Date();
        String retorno = null;
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        retorno = "Ping recibido el dia u hora: " + sdf.format(fechaPing);
        return retorno;
    }


}
