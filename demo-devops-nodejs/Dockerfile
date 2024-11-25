# Usar una imagen oficial de Node.js como base
FROM node:18

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /usr/src/app

# Copiar los archivos de package.json y package-lock.json al contenedor
COPY package*.json ./

# Instalar las dependencias del proyecto
RUN npm install

# Copiar el resto de los archivos del proyecto al contenedor
COPY . .

# Crear el archivo de base de datos dev.sqlite si no existe
RUN touch dev.sqlite && chmod 666 dev.sqlite

# Exponer el puerto que utiliza la aplicación
EXPOSE 8000

# Comando por defecto para ejecutar la aplicación
CMD ["npm", "run", "start"]
