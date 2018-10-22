#!/usr/bin/env bash

set -e
set -x
export REGISTRY=10.0.0.6:5000

#build eShopOnContainers images

#webmvc  80
docker build -f ./src/Web/WebMVC/Dockerfile -t ${REGISTRY}/eshop/webmvc .

#webshoppingagg
docker build -f ./src/ApiGateways/Web.Bff.Shopping/aggregator/Dockerfile -t ${REGISTRY}/eshop/webshoppingagg .

#ordering.signalrhub
docker build -f ./src/Services/Ordering/Ordering.SignalrHub/Dockerfile -t ${REGISTRY}/eshop/ordering.signalrhub .

#ocelotapigw
docker build -f ./src/ApiGateways/ApiGw-Base/Dockerfile -t ${REGISTRY}/eshop/ocelotapigw .

#mobileshoppingagg
docker build -f ./src/ApiGateways/Mobile.Bff.Shopping/aggregator/Dockerfile -t ${REGISTRY}/eshop/mobileshoppingagg .

#basket.api
docker build -f ./src/Services/Basket/Basket.API/Dockerfile -t ${REGISTRY}/eshop/basket.api .

#ordering.api
docker build -f ./src/Services/Ordering/Ordering.API/Dockerfile -t ${REGISTRY}/eshop/ordering.api .

#locations.api
docker build -f ./src/Services/Location/Locations.API/Dockerfile -t ${REGISTRY}/eshop/locations.api .

#webspa
docker build -f ./src/Web/WebSPA/Dockerfile -t ${REGISTRY}/eshop/webspa .

#payment.api
docker build -f ./src/Services/Payment/Payment.API/Dockerfile -t ${REGISTRY}/eshop/payment.api .

#marketing.api
docker build -f ./src/Services/Marketing/Marketing.API/Dockerfile -t ${REGISTRY}/eshop/marketing.api .

#ordering.backgroundtasks
docker build -f ./src/Services/Ordering/Ordering.BackgroundTasks/Dockerfile -t ${REGISTRY}/eshop/ordering.backgroundtasks .

#catalog.api
docker build -f ./src/Services/Catalog/Catalog.API/Dockerfile -t ${REGISTRY}/eshop/catalog.api .

#identity.api
docker build -f ./src/Services/Identity/Identity.API/Dockerfile -t ${REGISTRY}/eshop/identity.api .

#mobileshoppingapigw.dockerfile
docker build -f ./mobileshoppingapigw.dockerfile -t ${REGISTRY}/eshop/mobileshoppingapigw .

#mobilemarketingapigw.dockerfile
docker build -f ./mobilemarketingapigw.dockerfile -t ${REGISTRY}/eshop/mobilemarketingapigw .

#webshoppingapigw.dockerfile
docker build -f ./webshoppingapigw.dockerfile -t ${REGISTRY}/eshop/webshoppingapigw .

#webmarketingapigw.dockerfile
docker build -f ./webmarketingapigw.dockerfile -t ${REGISTRY}/eshop/webmarketingapigw .


#webstatus
docker build -f ./src/Web/WebStatus/Dockerfile -t ${REGISTRY}/eshop/webstatus .

#rabbitmq:3-management-alpine
docker pull rabbitmq:3-management-alpine
docker tag rabbitmq:3-management-alpine ${REGISTRY}/eshop/rabbitmq:3-management-alpine
#microsoft/mssql-server-linux:2017-latest
docker pull microsoft/mssql-server-linux:2017-latest
docker tag microsoft/mssql-server-linux:2017-latest ${REGISTRY}/eshop/mssql-server-linux:2017-latest
#mongo
docker pull mongo
docker tag mongo ${REGISTRY}/eshop/mongo
#redis:alpine
docker pull redis:alpine
docker tag redis:alpine ${REGISTRY}/eshop/redis:alpine
#
