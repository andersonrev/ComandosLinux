## PROBLEMAS AL INCIAR EL DOCKER COMPOSE (docker-proxy)
#### PARA MOSTRAR LOS PUERTOS ABRIDOS O ABIERTOS (opened).
* sudo netstat -tanp

##### VERIFICAR EL PID DEL PROCESO QUE ESTA UTILIZANDO..
* sudo fuser -n tcp 30501
* ..................30502
* ..................30503

##### UNA VEZ IDENTIFICADO LOS PID , SE LOS EXTERMINA 

* sudo kill (PID)
* sudo kill 4140



## Pantalla de error:

docker-compose up
Creating network "backend-prueba-submodulos_default" with the default driver
Creating volume "backend-prueba-submodulos_redis-volume" with default driver
Creating volume "backend-prueba-submodulos_mongo-config-volume" with default driver
Creating volume "backend-prueba-submodulos_mongo-db-volume" with default driver
Creating volume "backend-prueba-submodulos_mysql-volume" with default driver
Creating fearmpc_mongo ... 
Creating fearmpc_mysql ... 
Creating fearmpc_redis ... error

Creating fearmpc_mysql ... error
789a5a853bd4): Error starting userland proxy: listen tcp 0.0.0.0:30502: bind: address already in use
Creating fearmpc_mongo ... error
ERROR: for fearmpc_mysql  Cannot start service mysql_db: driver failed programming external connectivity on endpoint fearmpc_mysql (71ddbea8cea15c501e66b7f911da74a8ae2e6f5f22c8caad2b8a0e1c5c2e1d2d): Error starting userland proxy: listen tcp 0.0.0.0:30501: bind: address already in use

ERROR: for fearmpc_mongo  Cannot start service mongo_db: driver failed programming external connectivity on endpoint fearmpc_mongo (126a5065813b95a93a545175979b9ae951aa353831fea2733e2da3c8b146d65e): Error starting userland proxy: listen tcp 0.0.0.0:30503: bind: address already in use

ERROR: for mongo_db  Cannot start service mongo_db: driver failed programming external connectivity on endpoint fearmpc_mongo (126a5065813b95a93a545175979b9ae951aa353831fea2733e2da3c8b146d65e): Error starting userland proxy: listen tcp 0.0.0.0:30503: bind: address already in use

ERROR: for redis_db  Cannot start service redis_db: driver failed programming external connectivity on endpoint fearmpc_redis (dbd0825da98a3476fcdde0a603138a636b1d85958697d647addf789a5a853bd4): Error starting userland proxy: listen tcp 0.0.0.0:30502: bind: address already in use

ERROR: for mysql_db  Cannot start service mysql_db: driver failed programming external connectivity on endpoint fearmpc_mysql (71ddbea8cea15c501e66b7f911da74a8ae2e6f5f22c8caad2b8a0e1c5c2e1d2d): Error starting userland proxy: listen tcp 0.0.0.0:30501: bind: address already in use
ERROR: Encountered errors while bringing up the project.




