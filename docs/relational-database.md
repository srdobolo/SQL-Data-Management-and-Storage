# 7. Relational Database

## Clients Table

```sql
CREATE TABLE Clients (
    id_client VARCHAR(6) PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    tax_id INTEGER UNIQUE NOT NULL CHECK (
        tax_id BETWEEN 100000000 AND 399999999
    ), -- Portuguese standard tax number for individuals
    email VARCHAR(100) UNIQUE NOT NULL CHECK (
        email LIKE '%@%.%'
    ),
    phone_number VARCHAR(9) UNIQUE NOT NULL CHECK (
         (phone_number LIKE '91%') OR
         (phone_number LIKE '92%') OR
         (phone_number LIKE '93%') OR
         (phone_number LIKE '96%') AND 
         LENGTH(phone_number) = 9
    ), -- Portuguese standard phonenumbers.
    date_of_birth DATE CHECK (
    date_of_birth <= CURRENT_DATE AND 
    date_of_birth LIKE '____-__-__'
    ),
    newsletter BOOLEAN NOT NULL DEFAULT FALSE,
    authorization BOOLEAN NOT NULL DEFAULT FALSE,
    acquisition_channel VARCHAR(100) CHECK (
    acquisition_channel IN ('Instagram', 'Facebook', 'Tik Tok', 'Google', 'Events', 'TheFork', 'Email Marketing', 'Friend Recommendation')
    ),  
    modified_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);
```

## Products Table

```sql
CREATE TABLE Products (
    id_product VARCHAR(6) PRIMARY KEY,
    name VARCHAR(100) UNIQUE NOT NULL,
    description TEXT,
    product_type VARCHAR(20) NOT NULL CHECK (
        product_type IN ('beer', 'snacks')
    ),
    sale_price DECIMAL(10,2) NOT NULL,
    current_stock FLOAT NOT NULL,
    minimum_stock FLOAT NOT NULL,
    modified_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

ALTER TABLE Products
ADD COLUMN purchase_price DECIMAL(10,2); -- Adds purchase_price column. Stores the purchase cost of the product.
```

## Employees Table

```sql
CREATE TABLE Employees (
    id_employee VARCHAR(6) PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    identification_doc VARCHAR(12) NOT NULL CHECK (
        identification_doc GLOB '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9] [A-Z][A-Z] [0-9]'
        ), -- Portuguese standard for id number
    tax_id INTEGER UNIQUE NOT NULL CHECK (
        tax_id BETWEEN 100000000 AND 399999999
    ), -- Portuguese standard tax number for individuals
    email VARCHAR(100) UNIQUE NOT NULL CHECK (
        email LIKE '%@%.%'
    ),
    phone_number VARCHAR(9) UNIQUE NOT NULL CHECK (
         (phone_number LIKE '91%') OR
         (phone_number LIKE '92%') OR
         (phone_number LIKE '93%') OR
         (phone_number LIKE '96%') AND 
         LENGTH(phone_number) = 9
    ), -- Portuguese standard phonenumbers.
    role VARCHAR(50) NOT NULL,
    date_of_birth DATE CHECK (
        date_of_birth <= CURRENT_DATE AND 
        date_of_birth LIKE '____-__-__'
        ),
    address TEXT,
    iban VARCHAR(25) NOT NULL CHECK (
        iban LIKE 'PT%' AND LENGTH(iban)=25
    ), -- Portuguese standard for IBAN. 
    modified_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

## Suppliers Table

```sql
CREATE TABLE Suppliers (
    id_supplier VARCHAR(6) PRIMARY KEY,
    company_name VARCHAR(100) NOT NULL,
    tax_id INTEGER UNIQUE NOT NULL CHECK (
        tax_id BETWEEN 500000000 AND 599999999
    ), -- portuguese standard for companies tax id
    email VARCHAR(100) UNIQUE NOT NULL CHECK (
        email LIKE '%@%.%'
    ),
    phone_number VARCHAR(9) UNIQUE NOT NULL CHECK (
         (phone_number LIKE '91%') OR
         (phone_number LIKE '92%') OR
         (phone_number LIKE '93%') OR
         (phone_number LIKE '96%') AND 
         LENGTH(phone_number) = 9
    ), -- Portuguese standard phonenumbers.
    contact_person VARCHAR(100),
    address TEXT,
    country VARCHAR(50),
    modified_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

## Reviews Table

```sql
CREATE TABLE Reviews (
    id_client VARCHAR(6) PRIMARY KEY,
    rating INTEGER CHECK (rating BETWEEN 1 AND 5),
    comment TEXT,
    visibility BOOLEAN NOT NULL DEFAULT TRUE,
    review_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_client) REFERENCES Clients(id_client)
);
```

## Events Table

```sql
CREATE TABLE Events (
    id_event      VARCHAR(6) PRIMARY KEY,
    name          VARCHAR(100) NOT NULL,
    description   TEXT,
    event_type    VARCHAR(50) NOT NULL CHECK (
        event_type IN ('party', 'workshop', 'launch', 'other')
    ),
    event_date    DATE NOT NULL,
    event_time    TIME NOT NULL,
    location      VARCHAR(100),
    capacity      INTEGER NOT NULL CHECK (capacity > 0),
    private_event BOOLEAN NOT NULL DEFAULT FALSE,
    price         DECIMAL(10,2),
    modified_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    created_at   TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

## Event_participations Table

```sql
CREATE TABLE Event_Participations (
    id_event   VARCHAR(6) NOT NULL,
    id_client  VARCHAR(6) NOT NULL,
    registration_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id_event, id_client),
    FOREIGN KEY (id_event) REFERENCES Events(id_event),
    FOREIGN KEY (id_client) REFERENCES Clients(id_client)
);
```

## Payments Table

```sql
CREATE TABLE Payments (
    id_payment VARCHAR(6) PRIMARY KEY,
    id_client VARCHAR(6), 
    id_employee VARCHAR(6),
    amount DECIMAL(10,2) NOT NULL,
    currency VARCHAR(3) NOT NULL CHECK (
        currency IN ('EUR', 'USD', 'GBP')
    ),
    payment_method VARCHAR(20) NOT NULL CHECK (
        payment_method IN ('card', 'transfer', 'cash')
    ),
    payment_status VARCHAR(20) NOT NULL CHECK (
        payment_status IN ('pending', 'completed', 'canceled')
    ),
    payment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,    
    FOREIGN KEY (id_client) REFERENCES Clients(id_client),
    FOREIGN KEY (id_employee) REFERENCES Employees(id_employee)
);
```

## Payment_items Table

```sql
CREATE TABLE Payment_Items (
    id_payment VARCHAR(6),
    id_product VARCHAR(6),
    quantity INTEGER NOT NULL CHECK (quantity > 0),
    unit_price DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (id_payment, id_product),
    FOREIGN KEY (id_payment) REFERENCES Payments(id_payment),
    FOREIGN KEY (id_product) REFERENCES Products(id_product)
);
```

## Orders Table

```sql
CREATE TABLE Orders (
    id_order VARCHAR(6) PRIMARY KEY,
    id_supplier VARCHAR(6),
    id_employee VARCHAR(6),
    amount DECIMAL(10,2) NOT NULL,
    currency VARCHAR(3) NOT NULL CHECK (currency IN ('EUR', 'USD', 'GBP')),
    payment_method VARCHAR(20) NOT NULL CHECK (payment_method IN ('card', 'transfer', 'cash')),
    payment_status VARCHAR(20) NOT NULL CHECK (payment_status IN ('pending', 'completed', 'canceled')),
    order_status VARCHAR(20) NOT NULL CHECK (order_status IN ('pending', 'processing', 'shipped', 'delivered', 'canceled')),
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    modified_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_supplier) REFERENCES Suppliers(id_supplier),
    FOREIGN KEY (id_employee) REFERENCES Employees(id_employee)
);
```

## Order_items Table

```sql
CREATE TABLE Order_Items (
    id_order VARCHAR(6),
    id_product VARCHAR(6),
    quantity INTEGER NOT NULL CHECK (quantity > 0),
    unit_value DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (id_order, id_product),
    FOREIGN KEY (id_order) REFERENCES Orders(id_order),
    FOREIGN KEY (id_product) REFERENCES Products(id_product)
);
```
