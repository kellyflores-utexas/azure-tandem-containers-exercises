# 001-Intro to Kubernetes: Challenge 1

## Docker

```shell
echo "Navigate to the Challenge 1 directory in 001 and build the images"
exit 1

docker build -t content-web:latest .

docker build -t content-api:latest .
```

```shell
docker run --rm --detach -p 3001:3001 --name content-api --network bridge kellyflores.azurecr.io/content-api:latest
```

```shell
docker run --rm --detach -p 3005:3000 --name content-web --network bridge --env NAME=content-api:3001 kellyflores.azurecr.io/content-web:latest
```

---

```shell
docker tag content-api kellyflores.azurecr.io/content-api:latest
docker tag content-web kellyflores.azurecr.io/content-web:latest
```

```shell
az acr login -n kellyflores.azurecr.io
```

```shell
docker push kellyflores.azurecr.io/content-api:latest
docker push kellyflores.azurecr.io/content-web:latest
```

---

```shell
helm package <CHART-NAME> --version <VERSION>
```

```shell
helm push **.tgz oci://kellyflores.azurecr.io/content-api:latest

```

```shell
 helm install fab-medical oci://kellyflores.azurecr.io/content-web:latest
```


---

```shell
az login
# --subscription "InCycle Labs - MSDN DevTest"
az aks get-credentials -n em-aks-ws -g emerson-workshop-rg --subscription "InCycle Labs - MSDN DevTest"
```

```shell
# installing a helm chart from local
helm install dev content-web-0.0.1.tgz --version 0.0.1 --namespace kelly-flores
```


```shell
#kubectl create secret docker-registry acr-kellyflores --docker-server=kellyflores.azurecr.io --docker-username=kellyflores --docker-password="A" --namespace kelly-flores

kubectl create secret docker-registry acr-kellyflores-1 \
    --namespace kelly-flores \
    --docker-server=kellyflores.azurecr.io \
    --docker-username=kellyflores \
    --docker-password=AAbrwU/3TOtT0RH2CLoiH6hvMmZXe8b2eeagd+JWvl+ACRBfhLW+
```