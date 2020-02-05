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
