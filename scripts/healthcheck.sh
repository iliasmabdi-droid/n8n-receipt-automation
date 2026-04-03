#!/bin/bash
# Healthcheck script for local Docker environment

echo "🔍 Checking Docker..."
if docker info > /dev/null 2>&1; then
    echo "✅ Docker is running"
else
    echo "❌ Docker is not running. Start Docker Desktop first."
    exit 1
fi

echo "🔍 Checking Docker Compose..."
if docker compose version > /dev/null 2>&1; then
    echo "✅ Docker Compose is available"
else
    echo "❌ Docker Compose not found"
    exit 1
fi

echo "🔍 Checking git remote..."
if git remote -v | grep -q origin; then
    echo "✅ Git remote configured"
else
    echo "⚠️ No git remote configured"
fi

echo "🔍 Checking .gitignore..."
if [ -f ".gitignore" ]; then
    echo "✅ .gitignore exists"
else
    echo "❌ .gitignore missing"
fi

echo "✅ All checks passed. Ready for Phase 1."