# TEST Docker image for QGIS server

```
git clone --recurse-submodules https://github.com/maltaesousa/qgis-test-oapif.git
```

## Build

Build docker-qgis-server
```sh
cd docker-qgis-server
docker build --build-arg QGIS_BRANCH=server-oapif-ogcapi-feature-schema-2 --target runner-server  --tag ghcr.io/sitn/qgis-server:ogc-api-test-1 .
```

Test it:
```sh
docker run --publish=8380:80 --volume=${PWD}/test_project:/etc/qgisserver --env QGIS_SERVER_LANDING_PAGE_PROJECTS_DIRECTORIES=/etc/qgisserver ghcr.io/sitn/qgis-server:ogc-api-test-1
```
