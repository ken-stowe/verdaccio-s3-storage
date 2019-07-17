FROM verdaccio/verdaccio:4.1.0

USER root

RUN yarn cache clean && yarn add verdaccio-s3-storage@0.2.1 --production=true --no-lockfile

USER $VERDACCIO_USER_UID

