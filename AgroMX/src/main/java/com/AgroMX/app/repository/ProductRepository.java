package com.AgroMX.app.repository;

import java.util.Set;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.AgroMX.app.model.Product;

public interface ProductRepository extends CrudRepository<Product, Long>, PagingAndSortingRepository<Product, Long> {

    Set<Product> findByCategory(String category);
    
    Page<Product> findAllByActiveTrue(Pageable pageable);
    Page<Product> findAllByActiveFalse(Pageable pageable);
}