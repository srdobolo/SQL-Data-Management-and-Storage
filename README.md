# 🍺 Malta Brew, Taproom Information System

![Logo](images/c7b24502-d400-4153-9ce7-eb6fc51b8de1.png)

## 📑 Index

- [1. Resume](#1 )
- [1. Company Overview](#1-company-overview)
- [2. Objectives](#2-objectives)
- [3. Target Audience](#3-target-audience)
- [4. Why an Information System (IS) Matters](#4-why-an-information-system-is-matters)
- [5. Mission & Core Values](#5-mission--core-values)
- [6. Team Structure & User Roles](#6-team-structure--user-roles)
- [7. Functional Requirements](#7-functional-requirements)
- [8. Entities and Atributes](docs/entities-atributes.md)
- [9. Entities Relational Diagram](images/er-diagram.png)
- [10. Relational Database](docs/relational-database.md)
- [11. Data Seeding](docs/data-seeding.md)
- [12. SQL Simple Queries](queries/simple-queries.md)
- [13. SQL Advanced Queries](queries/advanced-querias.md)

---

## 2. Company Overview

**Company Name:** *Malta Brew, Taproom*  

**CAE & Industry (Portugal):**

- **CAE:** 47250 — Retail trade of beverages in specialized establishments
- **Core Activities:**  
  - Selling Portuguese craft beers and complementary products  
  - Organizing thematic events  
  - Offering immersive experiences centered around beer culture  

---

## 3. Objectives

Malta Brew, Taproom aims to evolve beyond a taproom into a vibrant cultural hub.  

- Become a **national reference** for Portuguese craft beer  
- Leverage **Instagram** and **TikTok** to broaden reach and engagement  
- Implement a **cashless system** for enhanced security and streamlined operations  
- Host **thematic events** that foster customer loyalty  
- Invest in **technological innovation** to elevate service and management efficiency  

---

## 4. Target Audience

The establishment welcomes individuals aged **18 and above**, of any nationality, who appreciate gastronomic and cultural experiences tied to craft beer.  

---

## 5. Why an Information System (IS) Matters

An integrated Information System is essential for achieving operational excellence and strategic growth:  

- **Cost Efficiency:** Automate self-service processes to reduce operating costs  
- **Scalability:** Support **multilingual interfaces** for seamless international expansion  
- **Financial Security:** Minimize fraud and human error with a cashless system  
- **Inventory Management:** Monitor stock in real time and predict consumption trends  
- **Logistical Streamlining:** Seamlessly integrate supplier operations via APIs  
- **Preventive Maintenance:** Track equipment usage time to ensure longevity and performance  

---

## 6. Mission & Core Values

### Mission

Deliver exceptional, discovery-rich experiences centered on Portuguese craft beer—anchored in innovation, quality, and technological integration.  

### Values  

- **Innovation:** Continual evolution through systems like self-service and cashless operations  
- **Experience & Sharing:** Cultivating a sociable environment through events and production engagement  
- **Welcoming & Inclusive:** Multilingual services embracing cultural diversity  
- **Transparency & Safety:** Trustworthy operations via clear financial flows and secure systems  
- **Operational Sustainability:** Enhanced stock control and efficient resource use  
- **Passion for Portuguese Craft Beer:** Supporting local producers and showcasing national styles  

---

## 7. Team Structure & User Roles

### Organizational Structure

- **Management / Co-Founders:** Business leadership  
- **Employees:** Frontline service and operations  

### User Roles & Access Levels  

| Role       | Access Level         | Capabilities                                                   |
|------------|----------------------|----------------------------------------------------------------|
| Client     | External, Front-end  | Interact with products and event features within the app       |
| Supplier   | External, Portal     | Manage orders and supply products                              |
| Accountant | Internal, Back-office| Access to employee records, supplier data, payments, and orders|
| Lawyer     | External             | Restricted legal document access (e.g., contracts)             |
| Management | Internal, Full       | Control across clients, events, products, and operations       |
| Employees  | Internal, Limited    | Access to clients, events, and products (day-to-day tasks)     |

## 8. Functional Requirements, Non-Functional Requirements and Others

### 👤 For the Customer

- FR01: Visit and use the taproom space.
- FR02: Consult the menu/portfolio via app or kiosk.
- FR03: Purchase products (beers, snacks) via app/kiosk.
- FR04: Make reservations and register for events.
- FR05: Make digital and cashless payments.
- FR06: Receive personalized campaigns (e.g., birthday offers).
- FR07: Submit reviews and feedback.
- FR08: Share experiences on social media.

### 🚚 For the Supplier

- FR09: Supply products and stockroom materials.
- FR10: Access the supplier portal.
- FR11: View and confirm orders and deliveries.
- FR12: Issue invoices and receipts.

### 👨‍🍳 For the Employee

- FR13: Ensure safety and support for customers.
- FR14: Restock supplies and maintain cleanliness according to HACCP.
- FR15: Answer customer questions about equipment and processes.
- FR16: Wear company-provided uniforms.

### 🧑‍💼 For Management

- FR17: Control stock and prevent product shortages.
- FR18: Manage suppliers, payments, and costs.
- FR19: Promote the brand/product (marketing/partnerships).
- FR20: Ensure system updates and proper functioning.
- FR21: Ensure compliance with hygiene and safety rules.

### 🧾 For the Accountant

- FR22: Issue employee payment receipts.
- FR23: File tax declarations (e.g., corporate tax).
- FR24: Manage document flow (supplier invoices).
- FR25: Ensure compliance with tax legislation.

### ⚖️ For the Lawyer

- FR26: Draft employee contracts.
- FR27: Access restricted legal documents.

### 🖥️ For the System

- FR28: Enable automatic translation of menus.
- FR29: Offer different access levels according to profile (permissions).
- FR30: Integrate with supplier systems/APIs.
- FR31: Store reviews and consumption metrics.
- FR32: Support data backup and recovery.

---

### Non-Functional Requirements

- NFR01: **Security** – Sensitive data encryption, permission management, payment security.
- NFR02: **Usability** – Intuitive interface, multilingual, accessible via app and kiosk.
- NFR03: **Performance** – Low response time for critical operations (payments, stock, records).
- NFR04: **Reliability** – Regular backups, audit logs, fault tolerance.
- NFR05: **Scalability** – System prepared for growth in customer and event volume.
- NFR06: **Legal Compliance** – GDPR compliance and sector regulations.

---

### Technical Constraints

- TC01: Central database in **SQLite**.
- TC02: Native integration with cashless terminals (own or via API).
- TC03: Compatibility with mobile devices and self-service kiosks.
- TC04: Automatic export of reports in **PDF/CSV**.

---

### Reports & Audit

- RA01: Complete listings by period: sales, customers, products.
- RA02: Real-time stock reports.
- RA03: Detailed history of payments and orders.
- RA04: Dashboards with metrics (consumption, frequency, popular products).

---

### Special Rules & Notes

- SR01: Integrate general stock: consumption automatically reduces stock.
- SR02: Independent modules with communication between areas (customers, suppliers, products, events).
- SR03: Easy maintenance and future updates.

## 9. System Entities - Malta Brew Taproom

This document describes the main entities of the system and their respective attributes, based on the relational model in SQLite.

---

### 📌 Customer

```sql
Clients (
    id_client VARCHAR,
    name VARCHAR,
    tax_id INTEGER,
    email VARCHAR,
    phone_number VARCHAR,
    date_of_birth DATE,
    newsletter BOOLEAN,
    authorization BOOLEAN,
    acquisition_channel VARCHAR,
    modified_at TIMESTAMP,
    created_at TIMESTAMP
);
```

### 🍺 Product

```sql
Products (
    id_product VARCHAR,
    name VARCHAR,
    description TEXT,
    product_type VARCHAR,
    sale_price DECIMAL,
    current_stock FLOAT,
    minimum_stock FLOAT,
    modified_at TIMESTAMP,
    created_at TIMESTAMP
);
```

### 👨‍🔧 Employee

```sql
Employees (
    id_employee VARCHAR,
    name VARCHAR,
    identification_doc VARCHAR,
    tax_id INTEGER,
    email VARCHAR,
    phone_number VARCHAR,
    role VARCHAR,
    date_of_birth DATE,
    address TEXT,
    iban VARCHAR,
    modified_at TIMESTAMP,
    created_at TIMESTAMP
);
```

### 🏭 Supplier

```sql
Suppliers (
    id_supplier VARCHAR,
    company_name VARCHAR,
    tax_id INTEGER,
    email VARCHAR,
    phone_number VARCHAR,
    contact_person VARCHAR,
    address TEXT,
    country VARCHAR,
    modified_at TIMESTAMP,
    created_at TIMESTAMP
);
```

### ⭐ Review

```sql
Reviews (
    id_review VARCHAR,
    rating INTEGER,
    comment TEXT,
    visibility BOOLEAN,
    review_at TIMESTAMP
);
```

### 🎉 Events

```sql
Events (
    id_event VARCHAR,
    name VARCHAR,
    description TEXT,
    event_type VARCHAR,
    event_date DATE,
    event_time TIME,
    location VARCHAR,
    capacity INTEGER,
    private_event INTEGER,
    price DECIMAL,
    modified_at TIMESTAMP,
    created_at TIMESTAMP
);
```

### 🎉 Event Participation

```sql
Event_participation (
  id_client VARCHAR,
  id_client VARCHAR,
  registration_date DATETIME
);
```

### 💳 Payments

```sql
Payments (
    id_payment VARCHAR,
    id_client VARCHAR,
    id_employee VARCHAR,
    amount DECIMAL,
    currency VARCHAR,
    payment_method VARCHAR,
    payment_status VARCHAR,
    payment_date TIMESTAMP
);
```

### 💳 Payment_Items

```sql
Payment_items (
  id_payment VARCHAR,
  id_product VARCHAR,
  quantity INTEGER,
  unit_price DECIMAL
);
```

### 📦 Order

```sql
Orders (
    id_order VARCHAR,
    id_supplier VARCHAR,
    id_employee VARCHAR
    amount DECIMAL,
    currency VARCHAR,
    payment_method VARCHAR,
    payment_status VARCHAR,
    order_status VARCHAR
    order_date TIMESTAMP,
    modified_at TIMESTAMP
);
```

### 📦 Order Items

```sql
Order_items (
  id_order VARCHAR,
  id_product VARCHAR,
  quantity INTEGER,
  unit_value DECIMAL
);
```
