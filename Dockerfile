from ubuntu:latest
RUN apt-get update
RUN echo "backupc backuppc/reconfigure-webserver string apache2" | debconf-set-selections
RUN echo "backupc backuppc/tmppass string backuppc" | debconf-set-selections
RUN echo "postfix postfix/main_mailer_type string 'Local only'" | debconf-set-selections
RUN echo "postfix postfix/mailname string localhost" | debconf-set-selections
RUN apt-get install -y -q backuppc
ADD start.sh /
CMD /start.sh
