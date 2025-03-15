package com.AgroMX.app.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.AgroMX.app.model.Order;
import com.AgroMX.app.repository.OrderRepository;

@Service
public class OrderService {

    @Autowired
    private OrderRepository orderRepository;

    public Order getOrderById(Long id) {
        //TODO: implementar logica de negocio y excepciones personalizadas, posiblemente
        // implementar loggin 
        return orderRepository.findById(id).orElseThrow();        
    }
}
