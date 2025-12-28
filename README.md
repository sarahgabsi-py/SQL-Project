# 📘 Project Description – SQL Database (ER Model, Logical Schema, Querying)

This project focuses on the complete design of a relational database, starting from the conceptual analysis and progressing through the logical and physical implementation.
The goal is to model an academic information system that manages users, students, administrators, degree programs, study plans, events, entries, and interventions.

The work includes:
# 🧩 1. Conceptual Design – ER Diagram
A complete Entity–Relationship diagram was created, including:

- main entities (User, Student, Administrator, Degree Program, Study Plan, Career Record, Event, Room, Intervention, Author, Entry)
- relationships and cardinalities
- a total and exclusive generalization between User → Student / Administrator
- correct modeling of 1:1, 1:N, and N:N relationships
The ER diagram represents the entire application domain and serves as the foundation for the logical design.

# 🗂️ 2. Logical Design – Relational Schema
Based on the ER model, a full relational schema was developed, including:
- normalized tables
- primary keys (PK)
- foreign keys (FK)
- referential integrity constraints
Key tables include:
  - USER
  - STUDENT (FK to USER, FK to DEGREE_PROGRAM)
  - ADMINISTRATOR (FK to USER)
  - DEGREE_PROGRAM (FK to ADMINISTRATOR)
  - STUDY_PLAN (FK to DEGREE_PROGRAM)
  - CAREER_RECORD (FK to STUDENT, FK to STUDY_PLAN)
  - EVENT, ROOM, INTERVENTION, AUTHOR, ENTRY
The schema ensures consistency, integrity, and traceability of all information.

# 🧱 3. Entities and Attributes
For each entity, the following were defined:
- main attributes
- primary keys
- foreign keys
- logical constraints
- design notes (e.g., motivations for 1:1 relationships, handling of generalization, modeling choices)
This section documents the database structure and the reasoning behind each design decision.

# 🛠️ 4. SQL Implementation (phpMyAdmin / MySQL)
The project includes:
- SQL scripts for table creation
- definition of PKs and FKs
- sample data insertion
- example queries (JOINs, aggregations, filters, etc.)

# 🎯 Project Objective
To demonstrate the ability to:
- analyze a complex domain
- design a complete relational database
- create ER diagrams, logical schemas, and physical structures
- correctly apply PKs, FKs, cardinalities, and constraints
- document the entire process clearly and professionally
