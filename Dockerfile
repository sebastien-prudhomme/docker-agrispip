FROM ipeos/spip:3.2
MAINTAINER Sébastien Prud'homme <sebastien.prudhomme@gmail.com>

RUN curl https://contrib.spip.net/IMG/zip/plugins_giseh_avec_charte_graphique_180921.zip -o giseh.zip && \
    unzip giseh.zip -d /usr/src/spip/plugins-dist/ && \
    chown -R www-data:www-data /usr/src/spip/plugins-dist/ && \
    rm giseh.zip
