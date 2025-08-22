# System Requirements - Malta Brew Taproom

This document gathers the main functional and non-functional requirements of the Malta Brew Taproom system, serving as a reference for development, presentation, and evaluation.

---

## 1. System Objectives

- Provide unique experiences in a taproom environment with tastings and themed events.
- Implement technological solutions (self-service, cashless system, app, automatic translations) to improve efficiency, control, and customer satisfaction.
- Ensure integrated management of customers, products, events, suppliers, employees, stockroom, payments, and orders.

---

## 2. Functional Requirements

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

## 3. Non-Functional Requirements

- NFR01: **Security** – Sensitive data encryption, permission management, payment security.
- NFR02: **Usability** – Intuitive interface, multilingual, accessible via app and kiosk.
- NFR03: **Performance** – Low response time for critical operations (payments, stock, records).
- NFR04: **Reliability** – Regular backups, audit logs, fault tolerance.
- NFR05: **Scalability** – System prepared for growth in customer and event volume.
- NFR06: **Legal Compliance** – GDPR compliance and sector regulations.

---

## 4. Technical Constraints

- TC01: Central database in **SQLite**.
- TC02: Native integration with cashless terminals (own or via API).
- TC03: Compatibility with mobile devices and self-service kiosks.
- TC04: Automatic export of reports in **PDF/CSV**.

---

## 5. Reports & Audit

- RA01: Complete listings by period: sales, customers, products.
- RA02: Real-time stock reports.
- RA03: Detailed history of payments and orders.
- RA04: Dashboards with metrics (consumption, frequency, popular products).

---

## 6. Special Rules & Notes

- SR01: Integrate general stock: consumption automatically reduces stock.
- SR02: Independent modules with communication between areas (customers, suppliers, products, events).
- SR03: Easy maintenance and future updates.
