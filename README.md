# ✝️ Serve+ | Aplicativo Mobile Híbrido de Gestão de Escalas

O **Serve+** é um aplicativo mobile híbrido desenvolvido em **React Native (Expo)** projetado para automatizar, otimizar e gerenciar as escalas de serviço ministeriais.

---

## 📌 Sobre o Projeto

O **Serve+** resolve a complexidade da montagem manual de escalas em igrejas locais, cruzando preferências individuais, regras ministeriais, restrições de gênero/cargo e histórico de serviço para gerar escalas equilibradas e transparentes.

---

## 📜 Regra Fundamental de Arquitetura

> **Diretriz de Custo R$ 0:** Nenhuma decisão de arquitetura exigirá gasto financeiro em qualquer etapa do projeto (desenvolvimento, banco de dados, backend, frontend, hospedagem, testes, CI/CD e distribuição) enquanto houver alternativa gratuita tecnicamente adequada.

---

## 📋 Requisitos e Regras de Negócio (Fase 1)

### 1. Papéis de Usuário
* **Administrador (Pastor / Líder / Administrador):** Gestão de cadastros, cultos, postos, geração, revisão e publicação de escalas.
* **Colaborador (Diácono / Obreiro / Voluntário):** Visualização de escalas publicadas, registro de indisponibilidades e consulta de perfil.

### 2. Regras e Restrições Ministeriais
* **Janela de Indisponibilidade:** Preenchimento até domingo às 23:59 (ausência de registro indica 100% de disponibilidade).
* **Frequência e Contingência:** 
  * Meta: Máximo de 1 serviço por semana.
  * Em caso de escassez de equipe, a repetição é permitida, priorizando quem serviu há mais tempo (rotatividade justa).
* **Unicidade:** Proibido escalar a mesma pessoa em dois postos no mesmo culto.
* **Restrições Específicas de Posto:**
  * **Portaria:** Exclusivo para Oficiais (Diáconos e Obreiros).
  * **Placa:** Exclusivo para Voluntários(as).
  * **Mesa da Ceia (1º Domingo/Manhã):** Exclusivo para 2 Diaconisas.
  * **Demais postos:** Respeitam as exigências de gênero (ex: Recepção Feminina, Corredor 3 Masculino) e alternância entre Quinta e Domingo.

---

## 🗺️ Roadmap de Desenvolvimento (7 Fases)

- [x] **Fase 1 — Levantamento de Requisitos:** Mapeamento do problema, papéis e regras de negócio.
- [x] **Fase 2 — Modelagem:** Diagrama Entidade-Relacionamento (DER), fluxogramas e prototipagem.
- [ ] **Fase 3 — Banco de Dados:** Modelagem SQL/DDL, PostgreSQL e relacionamentos em nuvem.
- [ ] **Fase 4 — Backend:** API REST (Node.js/Express ou Java), autenticação, autorização e testes.
- [ ] **Fase 5 — Frontend:** Aplicativo mobile híbrido com React Native e Expo.
- [ ] **Fase 6 — Cloud & DevOps:** Containerização (Docker), CI/CD, deploy na Oracle Cloud (Always Free).
- [ ] **Fase 7 — Melhorias & IA:** Notificações, relatórios, auditoria e algoritmos inteligentes.

---

## 🛠️ Stack Tecnológica

* **Mobile App:** React Native + Expo Go (Testes em dispositivo físico)
* **Backend:** API REST
* **Banco de Dados:** PostgreSQL (DDL / Relacional)
* **Cloud & DevOps:** Oracle Cloud (Always Free Tier), Docker, GitHub Actions

---

## 🗄️ Documentação Técnica

* 📄 [Diagrama Entidade-Relacionamento (DER)](./docs/DER-Projeto-Escala.pdf)
* 🗃️ [Script SQL (schema.sql)](./database/schema.sql)

---

## ✒️ Autor

**Daniel Fernandes**  
* 🐙 GitHub: [@Dl-Fernandes](https://github.com/Dl-Fernandes)