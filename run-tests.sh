#!/bin/bash

# 🧪 Script de Execução de Testes - Newman
# Este script executa a coleção Postman com Newman

set -e  # Exit on error

echo "🚀 Iniciando testes com Newman..."
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# Verificar se os arquivos necessários existem
if [ ! -f "collections/JSONPlaceholder - Complete CRUD.postman_collection.json" ]; then
    echo "❌ Erro: Coleção Postman não encontrada!"
    echo "   Procure por: collections/JSONPlaceholder - Complete CRUD.postman_collection.json"
    exit 1
fi

if [ ! -f "environments/Dev.postman_environment.json" ]; then
    echo "❌ Erro: Ambiente Dev não encontrado!"
    echo "   Procure por: environments/Dev.postman_environment.json"
    exit 1
fi

# Criar diretório de relatórios se não existir
mkdir -p reports

# Executar Newman
echo "📝 Executando coleção Postman..."
echo ""

newman run "collections/JSONPlaceholder - Complete CRUD.postman_collection.json" \
  -e "environments/Dev.postman_environment.json" \
  --reporters cli,html \
  --reporter-html-export "reports/newman-report.html"

echo ""
echo "✅ Testes concluídos!"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "📊 Relatório HTML gerado: reports/newman-report.html"