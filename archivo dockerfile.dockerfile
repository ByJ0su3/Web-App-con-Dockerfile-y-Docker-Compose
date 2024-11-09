# Usar una imagen base de Node.js
FROM node:14

# Crear y establecer el directorio de trabajo dentro del contenedor
WORKDIR /usr/src/app

# Copiar el archivo package.json (para las dependencias)
COPY package*.json ./

# Instalar las dependencias
RUN npm install

# Copiar todos los archivos de la aplicación al contenedor
COPY . .

# Exponer el puerto donde la aplicación escuchará
EXPOSE 8080

# Iniciar la aplicación
CMD [ "npm", "start" ]

