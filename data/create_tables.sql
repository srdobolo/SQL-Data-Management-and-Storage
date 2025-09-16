CREATE TABLE Cliente (
  IDCliente INTEGER PRIMARY KEY,
  NomeCliente TEXT,
  EmailCliente TEXT,
  Cidade TEXT
);

CREATE TABLE Plano (
  Plano TEXT PRIMARY KEY,
  PrecoMensal DECIMAL
);

CREATE TABLE Assinatura (
  IDAssinatura INTEGER PRIMARY KEY,
  IDCliente INTEGER,
  Plano TEXT,
  Pagamento TEXT,
  DataInicio DATE,
  FOREIGN KEY (IDCliente) REFERENCES Cliente(IDCliente),
  FOREIGN KEY (Plano) REFERENCES Plano(Plano)
);

CREATE TABLE Filme_Assistido (
  IDAssinatura INTEGER,
  NomeFilme TEXT,
  FOREIGN KEY (IDAssinatura) REFERENCES Assinatura(IDAssinatura)
);