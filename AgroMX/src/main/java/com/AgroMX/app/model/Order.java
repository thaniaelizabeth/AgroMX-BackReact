package com.AgroMX.app.model;

import java.time.LocalDateTime;
import java.util.Set;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "Orders")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Order {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "order_id", nullable = false)
    private Long id;
    
    @ManyToOne
    @JoinColumn(name = "user_id", nullable = false)
    private User userId;

    @Column(name = "total")
    private Double total;
    
    @Column(name = "date_time")
    private LocalDateTime dateTime;

    //FIXME: cambiar el orden de la relacion con productos y usar un set o list
    @Column(name = "products")
    private Set<Product> products;
}