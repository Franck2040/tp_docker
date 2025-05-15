#Utilisation de l'image officielle Python comme base
FROM python:3.9
#Definition du repertoire de travail
WORKDIR /app
#Copie des fichiers de l'application dans l'image
COPY app.py /app/
#Installation des dependances (si nécessaire)
COPY requirements.txt /app/
RUN pip install -r requirements.txt
#Definition de la commande de lancement
CMD ["python", "app.py"]
