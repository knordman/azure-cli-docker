# azure-cli-docker
Azure CLI extended with access to local Docker Engine

Run as follows:
```bash
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock knordman/azure-cli-docker /bin/bash
```

*Alternative usage* Update login credentials for Azure Container Registry, without Azure CLI installed (create `$HOME/.docker` first if it does not exist). Replace `REGISTRY` with your `REGISTRY`.azurecr.io.

```bash
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock -v $HOME/.docker:/root/.docker knordman/azure-cli-docker /bin/bash -c "az login;az acr login --name REGISTRY"
```
