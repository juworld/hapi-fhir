## Compiling hapi-fhir-jpaserver-example in VSCode

Install VScode (https://code.visualstudio.com/download).

Make sure you have the follow extensions installed.

- https://marketplace.visualstudio.com/items?itemName=vscjava.vscode-maven
- https://marketplace.visualstudio.com/items?itemName=vscjava.vscode-java-pack
- https://marketplace.visualstudio.com/items?itemName=redhat.java

Now, you can compile the WAR file

```
$ mvn project
$ docker-compose build
```

For a clean build, remove target directory first:

```
$ rm -rf target
$ mvn project
$ docker-compose build
```

## Running hapi-fhir-jpaserver-example in different environment

For each hapi fhir instance, we will use a different port (just to keep it simple, need to revisit this later)

This is when you want to localize docker. Here's an example for local

1. Create `docker-compose.local.yml` (so, we need `docker-compose.dev.yml`, `docker-compose.prod.yml` etc.)
2. Expose a port

For local/dev (maybe cs2), we want to expose 8080. Fhir user friendly interface only works for 8080 and since we are developing in local, dev (and testing on cs2), we would want to expose 8080.

```yml
version: '3.5'
  services:
    hapi_db:
      ports:
        - '35106:3306'
      environment:
        PRODUCTION: 'false'

    hapi_http:
      ports:
        - '35180:8080'
      environment:
        PRODUCTION: 'false'
```

3. Start the docker container

```shell
$ docker-compose -f docker-compose.yml -f docker-compose.local.yml up -d
```