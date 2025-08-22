# 📋 Requisitos do Sistema - Malta Brew Taproom

Este documento reúne os principais requisitos funcionais e não funcionais do sistema Malta Brew Taproom, servindo como referência para desenvolvimento, apresentação e avaliação.

---

## 1. Objetivos do Sistema

- Proporcionar experiências únicas em ambiente de taproom com degustações e eventos temáticos.
- Implementar soluções tecnológicas (self-service, sistema cashless, app, traduções automáticas) para melhorar eficiência, controlo e satisfação do cliente.
- Garantir uma gestão integrada de clientes, produtos, eventos, fornecedores, funcionários, economato, pagamentos e encomendas.

---

## 2. Requisitos Funcionais

### 👤 Para o Cliente

- RF01: Visitar e utilizar o espaço da taproom.
- RF02: Consultar menu/portfólio através de app ou totem.
- RF03: Comprar produtos (cervejas, snacks) via app/kiosk.
- RF04: Realizar reservas e inscrições para eventos.
- RF05: Efetuar pagamentos digitais e cashless.
- RF06: Receber campanhas personalizadas (ex: aniversário).
- RF07: Submeter avaliações e feedback.
- RF08: Divulgar experiências nas redes sociais.

### 🚚 Para o Fornecedor

- RF09: Fornecer produtos e materiais de economato.
- RF10: Aceder ao portal do fornecedor.
- RF11: Consultar e confirmar encomendas e entregas.
- RF12: Emitir faturas e recibos.

### 👨‍🍳 Para o Funcionário

- RF13: Garantir segurança e apoio aos clientes.
- RF14: Repor economato e manter a limpeza conforme HACCP.
- RF15: Tirar dúvidas dos clientes sobre equipamentos e processos.
- RF16: Usar fardamento disponibilizado pela empresa.

### 🧑‍💼 Para a Gerência

- RF17: Controlar o stock e prevenir ruturas de produtos.
- RF18: Gerir fornecedores, pagamentos e custos.
- RF19: Divulgar a marca/produto (marketing/parcerias).
- RF20: Garantir atualização e funcionamento do sistema.
- RF21: Garantir conformidade com regras de higiene e segurança.

### 🧾 Para o Contabilista

- RF22: Emitir recibos de pagamento de funcionários.
- RF23: Fazer declarações fiscais (ex: IRC).
- RF24: Gerir fluxo documental (faturas de fornecedores).
- RF25: Garantir conformidade com a legislação fiscal.

### ⚖️ Para o Advogado

- RF26: Redigir contratos de funcionários.
- RF27: Aceder a documentos legais restritos.

### 🖥️ Para o Sistema

- RF28: Permitir tradução automática de menus.
- RF29: Oferecer diferentes níveis de acesso conforme perfil (permissões).
- RF30: Integrar com sistemas/API dos fornecedores.
- RF31: Armazenar avaliações e métricas de consumo.
- RF32: Suportar backup e recuperação de dados.

---

## 3. Requisitos Não Funcionais

- RNF01: **Segurança** – Criptografia de dados sensíveis, gestão de permissões, segurança no pagamento.
- RNF02: **Usabilidade** – Interface intuitiva, multilingue, acessível por app e totem.
- RNF03: **Desempenho** – Baixo tempo de resposta para operações críticas (pagamentos, stock, registos).
- RNF04: **Fiabilidade** – Backups regulares, logs de auditoria, tolerância a falhas.
- RNF05: **Escalabilidade** – Sistema preparado para crescimento do volume de clientes e eventos.
- RNF06: **Conformidade Legal** – Cumprimento do RGPD e regulamentação do setor.

---

## 4. Restrições Técnicas

- RT01: Base de dados central em **SQLite**.
- RT02: Integração nativa com terminais cashless (próprios ou via API).
- RT03: Compatibilidade com dispositivos móveis e quiosques de autoatendimento.
- RT04: Exportação automática de relatórios em **PDF/CSV**.

---

## 5. Relatórios & Auditoria

- RA01: Listagens completas por período: vendas, clientes, produtos.
- RA02: Relatórios de stock em tempo real.
- RA03: Histórico detalhado de pagamentos e encomendas.
- RA04: Dashboards de métricas (consumo, frequência, produtos populares).

---

## 6. Regras Especiais & Observações

- RE01: Integrar stock geral: saídas para consumo baixam stock automaticamente.
- RE02: Módulos independentes e comunicação entre áreas (clientes, fornecedores, produtos, eventos).
- RE03: Facilidade de manutenção e atualização futura.

---

> 💡 **Nota:**  
> Para expandir este documento, poderá adicionar casos de uso, diagramas de casos de uso, e detalhamento de requisitos com fluxos de interação ou wireframes.
