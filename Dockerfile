# Usar una imagen base de Python
FROM python:3.11-buster

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar todos los archivos del proyecto al contenedor
COPY . /app

# Instalar dependencias necesarias para la app y herramientas como netcat (nc)
RUN apt-get update && apt-get install -y netcat && rm -rf /var/lib/apt/lists/*

# Instalar las dependencias del proyecto
RUN pip install --no-cache-dir -r /app/requirements.txt

# Cambiar al directorio donde está manage.py
WORKDIR /app/djangoTemplate

# Exponer el puerto en el que correrá el servidor
EXPOSE 8000