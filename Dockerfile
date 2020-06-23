FROM alpine

LABEL \
  "name"="GitHub Branch Sync" \
  "homepage"="https://github.com/marketplace/actions/github-branch-sync" \
  "repository"="https://github.com/getdreams/github-branch-sync" \
  "maintainer"="Francesc Esplugas <francesc.esplugas@getdreams.com>"

RUN apk add --no-cache git openssh-client && \
  echo "StrictHostKeyChecking no" >> /etc/ssh/ssh_config

ADD *.sh /

ENTRYPOINT ["/entrypoint.sh"]
