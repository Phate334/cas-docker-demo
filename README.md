
## 參考

* [cas-webapp-docker](
https://github.com/apereo/cas-webapp-docker/blob/master/Dockerfile)
* [openfire-docker](https://github.com/igniterealtime/Openfire/blob/master/Dockerfile)
* [Best practices for writing Dockerfiles](https://docs.docker.com/develop/develop-images/dockerfile_best-practices/#run)

## keystore

> keytool -genkey -alias cas -keyalg RSA -validity 3650 -keystore thekeystore -ext san=dns:cas.localhost

## Run

```
> docker build -t cas/docker .
> docker run -d -P cas/docker
> docker ps
```

## exec
```
> docker exec -it <container_id> bash
```
