#!/bin/bash

echo "🔁 Début du cycle de développement..."

# 1. Pull depuis GitHub
echo "🔄 Mise à jour du projet depuis GitHub..."
git pull origin main --rebase || { echo "❌ Erreur lors du pull"; exit 1; }

# 2. Édition (ouvre index.html par défaut)
echo "✏️ Modification du code..."
read -p "Quel fichier veux-tu modifier ? (par défaut: index.html) : " file

if [ -z "$file" ]; then
  file="index.html"
fi

nano "$file"

# 3. Ajouter les changements
git add .

# 4. Demander le message de commit
read -p "💬 Message de commit : " msg

if [ -z "$msg" ]; then
  msg="Auto commit depuis dev-cycle.sh 🚀"
fi

# 5. Commit
git commit -m "$msg"

# 6. Push
git push origin main && echo "✅ Push terminé avec succès !"

# 7. Statut final
git status
#!/bin/bash

echo "🔁 Début du cycle de développement..."

# 1. Pull depuis GitHub
echo "🔄 Mise à jour du projet depuis GitHub..."
git pull origin main --rebase || { echo "❌ Erreur lors du pull"; exit 1; }

# 2. Édition (ouvre index.html par défaut)
echo "✏️ Modification du code..."
read -p "Quel fichier veux-tu modifier ? (par défaut: index.html) : " file

if [ -z "$file" ]; then
  file="index.html"
fi

nano "$file"

# 3. Ajouter les changements
git add .

# 4. Demander le message de commit
read -p "💬 Message de commit : " msg

if [ -z "$msg" ]; then
  msg="Auto commit depuis dev-cycle.sh 🚀"
fi

# 5. Commit
git commit -m "$msg"

# 6. Push
git push origin main && echo "✅ Push terminé avec succès !"

# 7. Statut final
git status
