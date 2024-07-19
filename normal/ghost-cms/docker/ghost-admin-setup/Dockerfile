FROM ghost:5-alpine

COPY ../../resources/add-admin-user.js /var/lib/ghost/current/core/cli/

RUN /bin/bash -c 'mkdir /var/lib/ghost/content/logs && node /var/lib/ghost/current/core/cli/add-admin-user.js add-admin-user --email admin@example.com --name TestUser --password atleast10chars'
