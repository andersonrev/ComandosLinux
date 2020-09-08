# PARA CREAR MIGAS DE PAN .NORMALES
-------------------------------------

rutas/ruta-gestion-bodega

En .ts -> **mc-ng-migas-de-pan-normal**
En .html -> **mc-ng-migas-de-pan-html**

En bodega.module -> En imports: mc-ng-import-modulo-individual

## Definición de la ruta

En el componente bodega.component 

```
En ngOnit() -> RUTAS_PRINCIPAL.rutaInicioEmpresa(false, true);
RUTAS_BODEGA.rutaGestionBodega(false, true);


```

Crear otro componente: **ng g c ruta-bodega --no-spec** 

* En ruta-bodega.component.ts en ngOnit()
  * RUTAS_PRINCIPAL.rutaEdificio(false, true)
  * RUTAS_BODEGA.rutaBodega(false, true)

## Gestion de TABLA

En ruta-gestion-tipo-emnu.component.ts usar : **mc-ng-migas-de-pan-tabla**

**NOTA**: no olvidar tipar la función rutaGestionTipoMenu: function(---)**:any**

En modales: **ng g c CrearEditarTipoMenu --no-spec**
En ruta-gestion-tipo-menu.component.**html** : **mc-ng-migas-de-pan-tabla-html**


* En la carpeta CONSTANTES: crear el archivo tipo_menu_servicios.ts .
Dentro del archivo:
export const TIPO_MENU:SERVICES : [TipoMenuRestService]


**NOTA**: En el modulo.


imortar: FormsModule. 
entryComponents: el modal
providers: ...SERVICIOS_TIPO_MENU



En ruta-gestion-tipo-menu.ts: **mc-ng-migas-de-pan-tabla**

1. llenar en la ruta-gestion-tipo-menu.component.ts
2. findWhereOr customizados default: findAll
3. Setear el where this.queryParams.where = { nombre: 'Ander'}
4. Método Búsqueda
5. Modales
   ojo: TIPAR -> en abritModaleEditarTipoMenu(registro: MenuTipoInterface) 



En HTML: ruta-gestion-tipo-menu.component.ts: 
descomentar lineas 59-61 
< div ngif= col.header === 'nombre'>



#### MODAL

en la carpeta crear-editar-tipo-menu -> en ts: **mc--ng-metodos-modal**

En HTML -> mc-ng-modal-html -> data.tipoMenu , TIPOMENU , <app-formulario-tipo-menu>

#### EN COMPONENTES

Crear carpeta tipo-menu-formulario 
 * crear archvio : comandos.md
    * mc-comandos-crear-formulario


Pasos:

1- TipoMenu
  mc-generar-campo-formulario

  Tipo tab nombre  tab string tab "Nombre" "etec etec


**NOTA**:  para consultar los tipos de datos para los formularios porner en la terminal lo siguiente:
yo man-lab-ng:campo-formulario --help 

Nos pasamos donde queremos configurar el formulario /tipo-menu/componente/tipo-emnu-formulario 1,2,3,4 arreglamops el carchivo .ts importando
* Iportar: En tipo-menu.module.ts en declarations: [TipoMenuFormularioComponent] 
En el modal Editar descomentamos la linea 25 <app-formulariop>




