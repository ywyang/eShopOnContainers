#!/usr/bin/env bash

set -e
set -x

export ONE_BOX=10.0.0.11
export REGION=alauda01
export SPACE_NAME=global
export REGISTRY=10.0.0.6:5000
export ALB_IP=10.0.0.6
export GIT_HOST=10.0.0.6:9988
export NGINX=nginx-10-11-0-6
export AUTH_TOKEN=97898f42b8c95098df3f82037f43bf13fa33ff53

docker push ${REGISTRY}/eshop/webmvc
docker push ${REGISTRY}/eshop/ordering.signalrhub
docker push ${REGISTRY}/eshop/ocelotapigw
docker push ${REGISTRY}/eshop/webshoppingagg
docker push ${REGISTRY}/eshop/mobileshoppingagg
docker push ${REGISTRY}/eshop/basket.api
docker push ${REGISTRY}/eshop/marketing.api
docker push ${REGISTRY}/eshop/locations.api
docker push ${REGISTRY}/eshop/catalog.api
docker push ${REGISTRY}/eshop/ordering.backgroundtasks
docker push ${REGISTRY}/eshop/ordering.api
docker push ${REGISTRY}/eshop/payment.api
docker push ${REGISTRY}/eshop/identity.api
docker push ${REGISTRY}/eshop/webspa
docker push ${REGISTRY}/eshop/webstatus
#rabbitmq:3-management-alpine
#microsoft/mssql-server-linux
#mongo
#redis:alpine
