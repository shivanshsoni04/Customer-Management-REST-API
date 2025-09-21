package com.BuildCM.Customer_Management.repository;

import com.BuildCM.Customer_Management.Entity.Customer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CustomerRepository extends JpaRepository<Customer, Long> {
}
