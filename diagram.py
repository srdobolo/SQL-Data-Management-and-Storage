# Install Erdantic if you haven't already
# pip install erdantic

from erdantic import Diagram
from pydantic import BaseModel
from typing import Optional, List

# -----------------------------
# Define Pydantic models
# -----------------------------

class UserProfile(BaseModel):
    id: str
    email: str
    nome_completo: str
    perfil: str
    telefone: Optional[str] = None
    criado_em: Optional[str] = None
    atualizado_em: Optional[str] = None

class CandidateProfile(BaseModel):
    id: str
    id_utilizador: str  # FK → UserProfile.id
    curriculo_url: Optional[str] = None
    competencias: Optional[str] = None
    anos_experiencia: Optional[str] = None
    formacao: Optional[str] = None
    salario_minimo_desejado: Optional[str] = None
    salario_maximo_desejado: Optional[str] = None
    localizacoes_preferidas: Optional[str] = None
    linkedin_url: Optional[str] = None
    github_url: Optional[str] = None
    portfolio_url: Optional[str] = None

class CompanyProfile(BaseModel):
    id: str
    id_utilizador: str  # FK → UserProfile.id
    nome_empresa: str
    descricao_empresa: Optional[str] = None
    sector_atividade: Optional[str] = None
    dimensao_empresa: Optional[str] = None
    numero_contribuinte: Optional[str] = None
    morada_faturacao: Optional[str] = None
    cidade_faturacao: Optional[str] = None
    pais_faturacao: Optional[str] = None
    stripe_customer_id: Optional[str] = None

class Job(BaseModel):
    id: str
    id_empresa: str  # FK → CompanyProfile.id
    titulo: str
    descricao: Optional[str] = None
    salario_minimo: Optional[str] = None
    salario_maximo: Optional[str] = None
    localizacao: Optional[str] = None
    tipo_contrato: Optional[str] = None
    estado: Optional[str] = None
    experiencia_requerida: Optional[str] = None
    categoria: Optional[str] = None

class JobApplication(BaseModel):
    id: str
    id_oferta: str  # FK → Job.id
    id_candidato: str  # FK → CandidateProfile.id
    carta_apresentacao_url: Optional[str] = None
    curriculo_url: Optional[str] = None
    estado: Optional[str] = None

class PaymentHistory(BaseModel):
    id: str
    id_empresa: str  # FK → CompanyProfile.id
    stripe_payment_intent_id: Optional[str] = None
    valor: Optional[str] = None
    moeda: Optional[str] = None
    estado: Optional[str] = None
    metodo_pagamento: Optional[str] = None
    iva_percentual: Optional[str] = None
    valor_com_iva: Optional[str] = None

# -----------------------------
# Generate ERD diagram
# -----------------------------
diagram = Diagram(
    [UserProfile, CandidateProfile, CompanyProfile, Job, JobApplication, PaymentHistory],
    show_relationships=True  # Shows FK connections
)

# Save output in your repo (docs folder)
diagram.to_png("./docs/ERD_PortalEmprego.png")
print("ERD saved to ./docs/ERD_PortalEmprego.png")