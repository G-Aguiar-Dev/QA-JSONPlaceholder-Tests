# 🧪 Testes de API - CRUD Completo com JSONPlaceholder

[![GitHub](https://img.shields.io/badge/GitHub-Projeto-blue?style=flat-square&logo=github)](https://github.com/G-Aguiar-Dev/QA-JSONPlaceholder-Tests)
![Postman](https://img.shields.io/badge/Postman-FF6C37?style=flat-square&logo=postman&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-blue?style=flat-square)

Uma coleção completa de testes para operações **CRUD** (Create, Read, Update, Delete) em uma API REST, utilizando a plataforma **Postman** com suporte a execução automatizada via **Newman**.

## 📋 Conteúdo

- **Coleção Postman** com testes para um fluxo CRUD completo
- **Ambientes configuráveis** (Dev e Prod)
- **Validação de schemas** JSON com suporte a assertions
- **Execução headless** com Newman para CI/CD

## 🔄 Sobre a API utilizada

Este projeto foi originalmente concebido para testar a API pública [JSONPlaceholder](https://jsonplaceholder.typicode.com/). Entretanto, por se tratar de uma API *mock* que não persiste dados (operações de escrita são simuladas, e recursos criados não podem ser consultados ou alterados posteriormente), foi utilizado o **json-server** local, baseado na API JSONPlaceholder.

O json-server cria uma API REST falsa a partir de um arquivo `db.json`, permitindo:
- Persistência real durante a execução dos testes
- Geração de IDs numéricos sequenciais (compatível com a maioria das APIs reais)
- Execução de todas as operações CRUD sem limitações

Portanto, embora o nome da coleção ainda faça referência ao JSONPlaceholder, **os testes são executados localmente** contra `http://localhost:3000`. Isso garante um ambiente confiável e reprodutível para validação do fluxo completo.


## 🎯 Cenários de Teste

- ✅ **POST** - Criar um novo post (`POST /posts`)
- ✅ **GET** - Buscar um post específico (`GET /posts/{id}`)
- ✅ **GET ALL** - Listar todos os posts (`GET /posts`)
- ✅ **PUT** - Atualizar completamente um post (`PUT /posts/{id}`)
- ✅ **PATCH** - Atualizar parcialmente um post (`PATCH /posts/{id}`)
- ✅ **DELETE** - Deletar um post (`DELETE /posts/{id}`)
- ✅ **Validação** - Schema JSON e status codes

## 🛠️ Pré-requisitos

- **Node.js** v14.0 ou superior
- **Postman** Desktop ou CLI ([Newman](https://www.npmjs.com/package/newman))
- npm ou yarn
- json-server

## 🚀 Instalação

```bash
# Clone o repositório
git clone https://github.com/G-Aguiar-Dev/QA-JSONPlaceholder-Tests.git
cd qa-jsonplaceholder-tests

# Instale o JSON Server
npm install -g json-server

# Instale o Newman (se deseja executar via CLI)
npm install -g newman
```

## 📖 Como Usar

### Via Postman (Interface Gráfica)

1. Abra o **Postman**
2. Clique em **Import** → selecione `collections/JSONPlaceholder - Complete CRUD.postman_collection.json`
3. Importe o ambiente: `environments/Dev.postman_environment.json`
4. Selecione o ambiente **Dev** no dropdown de ambientes
5. Execute a coleção (a ordem das requisições é importante para o fluxo)

> **Dica:** Use o ambiente **Prod** para testes em produção

### Via Newman (CLI - Automação)

Execute a coleção com o Newman:

**Bash/Linux/Mac:**
```bash
newman run "collections/JSONPlaceholder - Complete CRUD.postman_collection.json" \
  -e "environments/Dev.postman_environment.json" \
  --reporters cli,html \
  --reporter-html-export "reports/newman-report.html"
```

**PowerShell (Windows):**
```powershell
newman run "collections/JSONPlaceholder - Complete CRUD.postman_collection.json" `
  -e "environments/Dev.postman_environment.json" `
  --reporters html `
  --reporter-html-export "reports/newman-report.html"
```

**Ambientes disponíveis:**
- `environments/Dev.postman_environment.json` - Desenvolvimento
- `environments/Prod.postman_environment.json` - Produção

## 📂 Estrutura do Projeto

```
.
├── collections/
│   └── JSONPlaceholder - Complete CRUD.postman_collection.json
├── environments/
│   ├── Dev.postman_environment.json
│   └── Prod.postman_environment.json
├── reports/                      # Relatórios gerados pelo Newman
├── .gitignore
├── db.json                       # JSON utilizado pelo JSON Server
└── README.md
```

## 🧠 Habilidades Demonstradas

- ✅ Testes de API REST (operações CRUD completas)
- ✅ Validação de schemas JSON
- ✅ Variáveis de ambiente e pré-requisitos
- ✅ Encadeamento de requisições (request chaining)
- ✅ Execução headless com Newman
- ✅ Geração de relatórios HTML
- ✅ Boas práticas de versionamento Git

## 📝 Notas Importantes

- A **ordem das requisições** na coleção é importante, pois algumas dependem de IDs retornados pelas anteriores
- Certifique-se de que o **ambiente correto está selecionado** antes de executar os testes
- Os **relatórios** gerados pelo Newman são salvos em `reports/`

## 📚 Referências

- [Postman Learning Center](https://learning.postman.com/)
- [Newman Documentation](https://learning.postman.com/docs/running-collections/using-newman-cli/)
- [JSONPlaceholder API](https://jsonplaceholder.typicode.com/)

## 📄 Licença

Este projeto é fornecido como material de estudo em Qualidade de Software.

---

**Desenvolvido como parte de estudos em Testes de API e Qualidade de Software.**