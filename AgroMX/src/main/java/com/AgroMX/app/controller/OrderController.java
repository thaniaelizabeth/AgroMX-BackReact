package com.AgroMX.app.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.AgroMX.app.model.Order;
import com.AgroMX.app.service.OrderService;


@RestController
@RequestMapping("/order")
public class OrderController {
    
    @Autowired
    private OrderService orderService;
    
    @GetMapping("{id}")
    public ResponseEntity<Order> getOrder(@PathVariable("id") Long id){
        return ResponseEntity.ok(orderService.getOrderById(id));
    }
}
