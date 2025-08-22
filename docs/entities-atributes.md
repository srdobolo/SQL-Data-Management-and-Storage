# System Entities - Malta Brew Taproom

This document describes the main entities of the system and their respective attributes, based on the relational model in SQLite.

---

## 📌 Customer

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

## 🍺 Product

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

## 👨‍🔧 Employee

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

## 🏭 Supplier

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

## ⭐ Review

```sql
Reviews (
    id_review VARCHAR,
    rating INTEGER,
    comment TEXT,
    visibility BOOLEAN,
    review_at TIMESTAMP
);
```

## 🎉 Events

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

## 🎉 Event Participation

```sql
Event_participation (
  id_client VARCHAR,
  id_client VARCHAR,
  registration_date DATETIME
);
```

## 💳 Payments

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

## 💳 Payment_Items

```sql
Payment_items (
  id_payment VARCHAR,
  id_product VARCHAR,
  quantity INTEGER,
  unit_price DECIMAL
);
```

## 📦 Order

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

## 📦 Order Items

```sql
Order_items (
  id_order VARCHAR,
  id_product VARCHAR,
  quantity INTEGER,
  unit_value DECIMAL
);
```
