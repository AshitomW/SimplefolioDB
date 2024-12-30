# Portfolio Management System Database

A simple MySQL database project demonstrating basic database design and SQL operations. This is a learning/practice project and does not represent a full-featured portfolio management system.

## Overview

This repository contains a basic database implementation that simulates simplified portfolio management operations. It serves as a learning tool for understanding database design, SQL queries, and stored procedures.

## Repository Structure

-   `database-setup/` - Contains SQL scripts for creating and initializing the database schema
-   `database_dump/` - MySQL dump files for quick database import
-   `sample_queries/` - Collection of example SQL queries for common operations
-   `stored_procedures/` - SQL stored procedures for advanced database operations

## Schema

### Investor

-   **Fields**:
    -   `investor_id` (Primary Key)
    -   `first_name`
    -   `last_name`
    -   `email`
    -   `registration_date`

### Portfolio

-   **Fields**:
    -   `portfolio_id` (Primary Key)
    -   `investor_id` (Foreign Key, references **Investor**)
    -   `portfolio_name`
    -   `creation_date`

### Stock

-   **Fields**:
    -   `stock_id` (Primary Key)
    -   `symbol`
    -   `company_name`
    -   `current_price`
    -   `sector`
    -   `price_last_updated`

### Investments

-   **Fields**:
    -   `investment_id` (Primary Key)
    -   `portfolio_id` (Foreign Key, references **Portfolio**)
    -   `stock_id` (Foreign Key, references **Stock**)
    -   `quantity`
    -   `last_updated`

### Transaction

-   **Fields**:
    -   `transaction_id` (Primary Key)
    -   `investment_id` (Foreign Key, references **Investments**)
    -   `stock_id` (Foreign Key, references **Stock**)
    -   `transaction_type`
    -   `quantity`
    -   `price_per_share`
    -   `transaction_date`

## Setup Instructions

### Option 1: Using Database Setup Scripts

1. Install MySQL and MySQL Workbench on your system
2. Navigate to the `database-setup` directory
3. Execute the SQL scripts in MySQL Workbench in the specified order to create and populate the database

### Option 2: Using Database Dump

1. Install MySQL and MySQL Workbench on your system
2. Navigate to the `database_dump` directory
3. Import the dump file using MySQL Workbench or command line:

```sql
mysql -u your_username -p your_database_name < dump_file.sql
```

## Features

1. Basic database schema for portfolio data
2. Sample SQL queries for practice
3. Simple stored procedures examples

## Requirements

1. MySQL Server
2. MySQL Workbench

## Note

This is a practice project intended for learning purposes. It implements basic database operations and is not suitable for managing real investment portfolios or financial data.

## Usage

1. Learn basic database design
2. Practice SQL queries
3. Understand stored procedures
4. Experiment with MySQL Workbench

## Contributing

Feel free to use this as a foundation for your own database learning projects. If you have any suggestions for improvements or ideas for additional features, you're welcome to submit a pull request.
