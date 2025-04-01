#!/bin/bash

# 1. Ajouter tous les changements
git add .

# 2. Demander un message de commit
read -p "💬 Message de commit : " msg

# Si vide → message par défaut
if [ -z "$msg" ]; then
  msg="🧠 Auto commit depuis le VPS"
fi

# 3. Faire le commit
git commit -m "$msg"

# 4. Pusher vers GitHub
git push origin main

# 5. Afficher le statut
echo "✅ Push terminé !"
git status
