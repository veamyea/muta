# see versions at https://hub.docker.com/_/ghost
FROM ghost:5-alpine

# Crear carpeta para la DB con permisos correctos
RUN mkdir -p /var/lib/ghost/content/data && \
    chown -R ghost:ghost /var/lib/ghost/content

ENV url=https://www.muta.lovestoblog.com
ENV database__client=sqlite3
ENV database__connection__filename=/var/lib/ghost/content/data/ghost.db

EXPOSE 2368
