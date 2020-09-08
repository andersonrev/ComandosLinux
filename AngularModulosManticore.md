# CREACION DE UN NUEVO MODULO EN ANGULAR 

1. Crear la carpeta del nombre del modulo en el respectivo submodulo
2. ng g module tipo-menu --routinh
3. Dentro de la carpeta tipo-menu crear las carpetas
  * componentes
  * constantes
  * interfaces
  * modales
  * serivicios
  * pipes
  * directivas
  * rutas
4. **cd** rutas
5. mkdir definicion-rutas
6. ng g c ruta-gestion-tipo-menu --no-spec
7. cd definicion-rutas
8. touch rutas-tipo-menu-lazy.ts
9. cd interfaces/
10. touch tipo-menu.interface.ts
11. cd servicios
  * mkdir rest
  * cd rest
  * touch tipo-menu.rest.service.ts
12. Crear interface TipoMenuInterface
13. mc-ng-servicio  -> class TipoMenuREstSerice  .. this.segmento = 'tipo-menu'
14. Crear archivo rutas-tipo-menu.ts en la carpeta **constantes**
15. Export const RUTAS_TIPO_MENU = [path: 'tipo-menu']
16. en app.routing.module.ts poner ...RUTAS_TIPO_MENU
17. tipo-menu.routing.module.ts se especifica las rutas: { path: , components}
18. ver archivo migas de pan con tabla
