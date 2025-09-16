from graphviz import Digraph
import os

# Create folders if they don't exist
os.makedirs("images", exist_ok=True)

dot = Digraph("ERD_ClientProduct", format="png")
dot.attr(rankdir="TB", fontsize="12", fontname="Arial")

# Helper function to add table nodes
def add_table(name, title, fields, color="lightgray"):
    label = f'''<
    <TABLE BORDER="1" CELLBORDER="1" CELLSPACING="0">
        <TR><TD BGCOLOR="{color}" COLSPAN="2"><B>{title}</B></TD></TR>'''
    for f in fields:
        label += f'\n         <TR><TD ALIGN="LEFT">{f}</TD></TR>'
    label += "\n    </TABLE>>"
    dot.node(name, label=label, shape="none")

# Add tables
add_table("Clients", "Clients", [
    "id_client (PK)",
    "name",
    "tax_id (UNIQUE)",
    "email (UNIQUE)",
    "phone_number (UNIQUE)",
    "date_of_birth",
    "newsletter",
    "authorization",
    "acquisition_channel",
    "modified_at",
    "created_at"
], color="lightblue")

add_table("Products", "Products", [
    "id_product (PK)",
    "name (UNIQUE)",
    "description",
    "product_type",
    "sale_price",
    "current_stock",
    "minimum_stock",
    "purchase_price",
    "modified_at",
    "created_at"
], color="lightgreen")

add_table("Employees", "Employees", [
    "id_employee (PK)",
    "name",
    "identification_doc",
    "tax_id (UNIQUE)",
    "email (UNIQUE)",
    "phone_number (UNIQUE)",
    "role",
    "date_of_birth",
    "address",
    "iban",
    "modified_at",
    "created_at"
], color="lightyellow")

add_table("Suppliers", "Suppliers", [
    "id_supplier (PK)",
    "company_name",
    "tax_id (UNIQUE)",
    "email (UNIQUE)",
    "phone_number (UNIQUE)",
    "contact_person",
    "address",
    "country",
    "modified_at",
    "created_at"
], color="orange")

add_table("Reviews", "Reviews", [
    "id_client (PK, FK → Clients.id_client)",
    "rating",
    "comment",
    "visibility",
    "review_date"
], color="lightgray")

add_table("Events", "Events", [
    "id_event (PK)",
    "name",
    "description",
    "event_type",
    "event_date",
    "event_time",
    "location",
    "capacity",
    "private_event",
    "price",
    "modified_at",
    "created_at"
], color="lightcoral")

add_table("Event_Participations", "Event_Participations", [
    "id_event (PK, FK → Events.id_event)",
    "id_client (PK, FK → Clients.id_client)",
    "registration_date"
], color="lightcyan")

add_table("Payments", "Payments", [
    "id_payment (PK)",
    "id_client (FK → Clients.id_client)",
    "id_employee (FK → Employees.id_employee)",
    "amount",
    "currency",
    "payment_method",
    "payment_status",
    "payment_date"
], color="lightsteelblue")

add_table("Payment_Items", "Payment_Items", [
    "id_payment (PK, FK → Payments.id_payment)",
    "id_product (PK, FK → Products.id_product)",
    "quantity",
    "unit_price"
], color="lightpink")

add_table("Orders", "Orders", [
    "id_order (PK)",
    "id_supplier (FK → Suppliers.id_supplier)",
    "id_employee (FK → Employees.id_employee)",
    "amount",
    "currency",
    "payment_method",
    "payment_status",
    "order_status",
    "order_date",
    "modified_at"
], color="lightgoldenrod")

add_table("Order_Items", "Order_Items", [
    "id_order (PK, FK → Orders.id_order)",
    "id_product (PK, FK → Products.id_product)",
    "quantity",
    "unit_value"
], color="lightsalmon")

# Foreign key edges with cardinalities
dot.edge("Clients", "Reviews", label="1 → 1")

dot.edge("Events", "Event_Participations", label="1 → N")
dot.edge("Clients", "Event_Participations", label="1 → N")

dot.edge("Clients", "Payments", label="1 → N")
dot.edge("Employees", "Payments", label="1 → N")

dot.edge("Payments", "Payment_Items", label="1 → N")
dot.edge("Products", "Payment_Items", label="1 → N")

dot.edge("Suppliers", "Orders", label="1 → N")
dot.edge("Employees", "Orders", label="1 → N")

dot.edge("Orders", "Order_Items", label="1 → N")
dot.edge("Products", "Order_Items", label="1 → N")

# Render and save
output_path = "./images/ERD_ClientProduct"
dot.render(output_path, cleanup=True)

print(f"ERD saved to {output_path}.png")