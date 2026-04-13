# 🧪 Testes de API - CRUD Completo com JSONPlaceholder

![Postman](https://img.shields.io/badge/Postman-FF6C37?style=flat-square&logo=postman&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-blue?style=flat-square)

Uma coleção completa de testes para operações **CRUD** (Create, Read, Update, Delete) em uma API REST, utilizando a plataforma **Postman** com suporte a execução automatizada via **Newman**.

## 📋 Conteúdo

- **Coleção Postman** com testes para um fluxo CRUD completo
- **Ambientes configuráveis** (Dev e Prod)
- **Validação de schemas** JSON com suporte a assertions
- **Execução headless** com Newman para CI/CD

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

## 🚀 Instalação

```bash
# Clone o repositório
git clone https://github.com/seu-usuario/JsonPlaceholder.git
cd JsonPlaceholder

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
JsonPlaceholder/
├── collections/
│   └── JSONPlaceholder - Complete CRUD.postman_collection.json
├── environments/
│   ├── Dev.postman_environment.json
│   └── Prod.postman_environment.json
├── reports/                      # Relatórios gerados pelo Newman
├── .gitignore
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