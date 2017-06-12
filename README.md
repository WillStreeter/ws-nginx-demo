# ws-nginx-demo

#### A instance of NGINX used in the [ws-dev-docker-example](https://github.com/WillStreeter/ws-dev-docker-example) serving as proxy for 2 other containers


## Architecture:
This repository is part of a larger effort to expound on the strategies and approaches delineated in the article
[Practical Web Development and Architecture](https://medium.com/@will.streeter/practical-web-development-and-architecture-26a37d04c10f). NGINX is used as proxy,
to navigate request between two docker containers:

+ Back-End [ws-node-demo](https://github.com/WillStreeter/ws-node-demo)
+ Front-End [ws-ngx-login-demo](https://github.com/WillStreeter/ws-ngx-login-demo)


The ngin.conf applies the request URI  to one of the above containers base an parameter in the URI:

+ location/
   + proxy_pass http://ws-ngx-login-demo:5555

+ location/api
   + proxy_pass http:ws-node-demo:8080/api

+ location/docs
   + proxy_pass http:ws-node-demo:8080/docs


The **proxy_pass** are based on the named services (containers implementations) in [ws-dev-docker-example/docker-compose.yml](https://github.com/WillStreeter/ws-dev-docker-example/blob/master/docker-compose.yml)


![Alt Text](https://github.com/WillStreeter/ws-nginx-demo/raw/master/assets/ws-nginx-config-proxy.png)