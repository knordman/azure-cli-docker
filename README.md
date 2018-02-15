# azure-cli-docker
Azure CLI extended with access to local Docker Engine

Run as follows:

```bash
docker run -v /var/run/docker.sock:/var/run/docker.sock knordman/azure-cli-docker 
```

Passing in `$HOME/.docker` to sync registry login outside of container:

```bash
docker run -v /var/run/docker.sock:/var/run/docker.sock -v $HOME/.docker:/root/.docker knordman/azure-cli-docker 
```
