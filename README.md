# RDBMS-for-Public-Transport-Security

## Overview
A comprehensive database system for managing bus transportation operations, including vehicle tracking, driver management, passenger and bus information, and route scheduling.

## Key Features
- Comprehensive bus information tracking (registration, engine, chassis, fitness, tax details)
- Driver management with license validity tracking
- Passenger information system with travel history
- Route scheduling and management
- Ownership records

## Database Schema
### Entities
- **Bus** (Core vehicle information)
- **Driver** (License and personal details)
- **Owner** (Bus ownership records)
- **Passenger** (Traveler information)
- **Route** (Scheduling and locations)

### Relationships
- 1 Bus : N Passengers
- 1 Driver : 1 Bus
- 1 Owner : N Buses
- 1 Route : N Buses

## Entity-Relationship Diagram
![ER Diagram](https://github.com/AponGhosh/RDBMS-for-Public-Transport-Security/blob/main/ER-Diagram.png)

## Tools
- **Database Management System**: MariaDB 10.4.27
- **Programming Language**: SQL (Structured Query Language)
- **Development Tools**:
  - phpMyAdmin 5.2.0 (Database Administration)
  - Command Prompt (Query Scripting)
- **Modeling Software**:
  - Lucidchart (ER Diagram Design)
- **Backup Utility**: mysqldump (Database Export/Import)

## Clone Repository
   ```bash
   git clone https://github.com/AponGhosh/RDBMS-for-Public-Transport-Security.git
