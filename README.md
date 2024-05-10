# aider-environment

## note about docker

If you are not familliar with docker, is better before running script from this repository ensure, that you have configured and running docker. Try run command:
```
$ docker ps
CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES
```
If you are got message as above, all is good and you can continue to section [run](#run).

If you are got something like:
```
$ docker ps
permission denied while trying to connect to the Docker daemon socket at unix:///var/run/docker.sock: Get "http://%2Fvar%2Frun%2Fdocker.sock/v1.45/containers/json": dial unix /var/run/docker.sock: connect: permission denied
```
you must add current user to group `docker` and relogin current session.

## run

```
./aider
```

This script do:
 - create `workspace` folder if not exists
 - build docker image `aider` with all dependencies inside
 - start container `aider_${USER}` with persistent storage in folder `workspace`

After script end is container `aider_${USER}` removed, but image `aider` and data in `workspace` remain for next faster start.

## next console

You can connect to running aider container from other console by command:

```bash
$ docker exec -it aider_${USER} bash
```
