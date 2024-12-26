# Utilisez une image nginx pour servir l'application
FROM nginx:alpine

# Copiez les fichiers dans le répertoire par défaut de nginx
COPY . /usr/share/nginx/html

# Exposez le port 80
EXPOSE 80