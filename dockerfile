# Utilisez une image nginx pour servir l'application
FROM nginx:alpine

# Installez Python et pip pour exécuter les tests
RUN apk add --no-cache python3 py3-pip

# Copiez les fichiers frontend
COPY . /usr/share/nginx/html

# Exposez le port 80
EXPOSE 80

# Commande par défaut pour démarrer nginx
CMD ["nginx", "-g", "daemon off;"]
