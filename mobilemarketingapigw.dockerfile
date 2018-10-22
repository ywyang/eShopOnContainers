FROM 10.0.0.6:5000/eshop/ocelotapigw:latest
COPY src/ApiGateways/Mobile.Bff.Marketing/apigw/* /app/configuration/
