AZDO_TOKEN=
AZDO_ORG=

cat secret.yaml.tmpl | sed -e "s/y0ur-t0k3n/${AZDO_TOKEN}/g" | sed -e "s/y0ur-0rg/${AZDO_ORG}/g" > secret.yaml

make generate
kubectl apply -f package/crds
kubectl create ns crossplane-system
kubectl apply -f examples/providerconfig
kubectl apply -f examples/project/

# cd /tmp/xxxx
# export AZDO_PERSONAL_ACCESS_TOKEN=$AZDO_TOKEN
# export AZDO_ORG_SERVICE_URL=$AZDO_ORG
# terraform plan
