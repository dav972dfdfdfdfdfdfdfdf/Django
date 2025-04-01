#!/bin/bash

echo "🔄 Mise à jour du projet Django..."

# Aller dans le dossier
cd ~/Django || { echo "❌ Dossier Django introuvable"; exit 1; }

# Pull avec rebase
git pull origin main --rebase

echo "✅ Projet mis à jour !"
git status
