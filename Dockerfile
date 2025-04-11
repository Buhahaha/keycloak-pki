FROM quay.io/keycloak/keycloak:26.1.0

COPY --chown=1000:0 certs/cert.pem /opt/keycloak/certs/cert.pem
COPY --chown=1000:0 certs/key.pem /opt/keycloak/certs/key.pem
COPY --chown=1000:0 realm/myrealm.json /opt/keycloak/data/import/myrealm.json


RUN chown -R 1000:0 /opt/keycloak && chmod 600 /opt/keycloak/certs/*

# <-- Here's the important new bit
RUN /opt/keycloak/bin/kc.sh build
