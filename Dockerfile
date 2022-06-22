FROM httpd:2.4
COPY . /usr/local/apache2/htdocs/
LABEL traefik.http.routers.uriel.rule="Host(`uriel.sub.omnitracs.online`)"
LABEL traefik.http.routers.uriel.tls.certresolver="myresolver"
LABEL traefik.http.services.uriel.loadbalancer.server.port="80"
