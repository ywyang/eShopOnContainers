FROM 10.0.0.6:5000/eshop/ocelotapigw:latest
COPY src/ApiGateways/Web.Bff.Shopping/apigw/* /app/configuration/
