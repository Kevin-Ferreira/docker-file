# Mon dockerfile
FROM  fedora:latest
RUN dnf -y update
RUN dnf install wget tar git
WORKDIR /home/work
COPY Chinook_Sqlite.sqlite /home/work
COPY jointure.py /home/work
CMD ["python3","jointure.py"]



#installer wget tar git
# Copier la base de donnees sqlite Chinook_Sqlite.sqlite
# dans une directorie de travail
# Copier votre script de requetes SQL (celui avec des jointures) dans votre directory de travail
# lancer le programme ( python3,<nom du script>  avec la commande CMD

