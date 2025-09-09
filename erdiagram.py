from graphviz import Digraph
import os

# Create docs folder if not exists
os.makedirs("docs", exist_ok=True)

dot = Digraph("ERD_PortalEmprego", format="png")
dot.attr(rankdir="TB", fontsize="12", fontname="Arial")

# Helper: add table-style nodes with optional FK cardinalities
def add_table(name, title, fields, color="lightgray"):
    label = f'''<
    <TABLE BORDER="1" CELLBORDER="1" CELLSPACING="0">
        <TR><TD BGCOLOR="{color}" COLSPAN="2"><B>{title}</B></TD></TR>'''
    for f in fields:
        label += f'\n        <TR><TD ALIGN="LEFT">{f}</TD></TR>'
    label += "\n    </TABLE>>"
    dot.node(name, label=label, shape="none")

# Tables with FK cardinalities
add_table("user_profiles", "user_profiles", [
    "id (PK)",
    "email (UNIQUE)",
    "nome_completo",
    "perfil",
    "telefone",
    "criado_em",
    "atualizado_em"
], color="lightblue")

add_table("candidate_profiles", "candidate_profiles", [
    "id (PK)",
    "id_utilizador (FK → user_profiles.id) 1:1",
    "curriculo_url",
    "competencias",
    "anos_experiencia",
    "formacao",
    "salario_min/max",
    "localizacoes_preferidas",
    "linkedin/github/portfolio"
], color="lightyellow")

add_table("company_profiles", "company_profiles", [
    "id (PK)",
    "id_utilizador (FK → user_profiles.id) 1:1",
    "nome_empresa",
    "descricao_empresa",
    "sector_atividade",
    "dimensao_empresa",
    "numero_contribuinte",
    "morada/cidade/pais faturacao",
    "stripe_customer_id"
], color="lightpink")

add_table("jobs", "jobs", [
    "id (PK)",
    "id_empresa (FK → company_profiles.id) 1:N",
    "titulo",
    "descricao",
    "salario_min/max",
    "localizacao",
    "tipo_contrato",
    "estado",
    "experiencia_requerida",
    "categoria"
], color="lightgreen")

add_table("job_applications", "job_applications", [
    "id (PK)",
    "id_oferta (FK → jobs.id) 1:N",
    "id_candidato (FK → candidate_profiles.id) 1:N",
    "carta_apresentacao_url",
    "curriculo_url",
    "estado"
], color="orange")

add_table("payment_history", "payment_history", [
    "id (PK)",
    "id_empresa (FK → company_profiles.id) 1:N",
    "stripe_payment_intent_id",
    "valor",
    "moeda",
    "estado",
    "metodo_pagamento",
    "iva_percentual",
    "valor_com_iva"
], color="lightgray")

# Simple edge labels for readability (no crow foots)
dot.edge("user_profiles", "candidate_profiles", label="1 → 1")
dot.edge("user_profiles", "company_profiles", label="1 → 1")
dot.edge("company_profiles", "jobs", label="1 → *")
dot.edge("jobs", "job_applications", label="1 → *")
dot.edge("candidate_profiles", "job_applications", label="1 → *")
dot.edge("company_profiles", "payment_history", label="1 → *")

# Export
output_path = "./images/ERD_PortalEmprego"
dot.render(output_path, cleanup=True)

print(f"ERD saved to {output_path}.png")