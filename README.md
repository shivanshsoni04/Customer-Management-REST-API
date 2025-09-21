# Customer Management REST API

A **Spring Boot** application for managing customer records using **RESTful APIs**.  
This project allows creating, retrieving, and deleting customers stored in a **MySQL** database.

---

## 🚀 Features

- **Create Customer** – Add a new customer with `name` and `marks`.  
- **Get All Customers** – Retrieve all customers from the database.  
- **Get Customer by ID** – Retrieve a single customer by their ID.  
- **Delete Customer** – Remove a customer from the database.  

---

## 🛠 Technologies Used

- Java 20  
- Spring Boot 3.5.6  
- Spring Data JPA  
- MySQL  
- Maven  
- Lombok  

---

## 📡 API Endpoints

| Method | Endpoint               | Description                 | Body (for POST)                    |
|--------|-----------------------|-----------------------------|-----------------------------------|
| POST   | `/api/customers`       | Create a new customer       | `{ "name": "Shivansh", "marks": 95 }` |
| GET    | `/api/customers`       | Get all customers           | N/A                               |
| GET    | `/api/customers/{id}`  | Get customer by ID          | N/A                               |
| DELETE | `/api/customers/{id}`  | Delete customer by ID       | N/A                               |

> **Note:** All POST requests require the header: `Content-Type: application/json`.

---




