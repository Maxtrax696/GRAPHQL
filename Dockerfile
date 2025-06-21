# Imagen base oficial de Node.js
FROM node:20

# Directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar los archivos necesarios
COPY package*.json ./
RUN npm install

# Copiar el resto de archivos (como index.js)
COPY . .

# Exponer el puerto del servidor
EXPOSE 4000

# Comando por defecto al iniciar el contenedor
CMD ["node", "index.js"]
