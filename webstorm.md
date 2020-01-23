###  Auto ejecutado terminal  (evita npm run start o ng serve "CADA VEZ QUE SE REALIZAN CAMBIOS") 
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p

## Consulta
http://localhost:8080/horario-servicio?criterioBusqueda={"where": {"servicioPorEstablecimiento":{"articuloPorEmpresa":{"articulo":{"nombreCorto": "Test DIP"}}},"horario":{}}}
