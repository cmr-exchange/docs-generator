FROM docs-gen-docker_base:latest

WORKDIR /opt/rf-docs

COPY yarn.lock package.json /opt/rf-docs/

RUN yarn install --pure-lockfile
