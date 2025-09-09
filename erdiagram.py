from graphviz import Digraph

# Criar diagrama ER
dot = Digraph("ERD_PortalEmprego", format="png")
dot.attr(rankdir="LR", size="8")

# Definir estilo
node_attr = {"shape": "record", "fontname": "Arial", "fontsize": "10"}

# Tabelas principais
dot.node("user_profiles", """{
    user_profiles |
    + id (PK) \\l
    + email (UNIQUE) \\l
    + nome_completo \\l
    + perfil \\l
    + telefone \\l
    + criado_em \\l
    + atualizado_em \\l
}""", **node_attr)

dot.node("candidate_profiles", """{
    candidate_profiles |
    + id (PK) \\l
    + id_utilizador (FK) \\l
    + curriculo_url \\l
    + competencias \\l
    + anos_experiencia \\l
    + formacao \\l
    + salario_min/max \\l
    + localizacoes_preferidas \\l
    + linkedin/github/portfolio \\l
}""", **node_attr)

dot.node("company_profiles", """{
    company_profiles |
    + id (PK) \\l
    + id_utilizador (FK) \\l
    + nome_empresa \\l
    + descricao_empresa \\l
    + sector_atividade \\l
    + dimensao_empresa \\l
    + numero_contribuinte \\l
    + morada/cidade/pais faturacao \\l
    + stripe_customer_id \\l
}""", **node_attr)

dot.node("jobs", """{
    jobs |
    + id (PK) \\l
    + id_empresa (FK) \\l
    + titulo \\l
    + descricao \\l
    + salario_min/max \\l
    + localizacao \\l
    + tipo_contrato \\l
    + estado \\l
    + experiencia_requerida \\l
    + categoria \\l
}""", **node_attr)

dot.node("job_applications", """{
    job_applications |
    + id (PK) \\l
    + id_oferta (FK) \\l
    + id_candidato (FK) \\l
    + carta_apresentacao_url \\l
    + curriculo_url \\l
    + estado \\l
}""", **node_attr)

dot.node("payment_history", """{
    payment_history |
    + id (PK) \\l
    + id_empresa (FK) \\l
    + stripe_payment_intent_id \\l
    + valor \\l
    + moeda \\l
    + estado \\l
    + metodo_pagamento \\l
    + iva_percentual \\l
    + valor_com_iva \\l
}""", **node_attr)

# Relacionamentos
dot.edge("user_profiles", "candidate_profiles", label="1 - n")
dot.edge("user_profiles", "company_profiles", label="1 - n")
dot.edge("company_profiles", "jobs", label="1 - n")
dot.edge("jobs", "job_applications", label="1 - n")
dot.edge("candidate_profiles", "job_applications", label="1 - n")
dot.edge("company_profiles", "payment_history", label="1 - n")

# Exportar
output_path = "/mnt/data/ERD_PortalEmprego.png"
dot.render(output_path, cleanup=True)