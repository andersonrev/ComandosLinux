# author: andersonrev 
# github: https://github.com/andersonrev
# Instrucciones: 
# Para llamar el script desde cualquier directorio siga los siguientes pasos
# 1- Dar permisos al script.. -> Se recomienda ubicar el script en un directorio aparte.
#    chmod u+x folder.sh
# 2- Crear un enlace  del script a la carpeta de binarios
# sudo ln -s /home/andersonrev/carpetaScripts/folder.sh /usr/bin
# Y LIIISTOOOOOOOOOO!!
#!/bin/bash

echo Escribe el nombre del modulo a crearse eg: paso-servicio:
read varname
echo Se ha creado la estructura del modulo: $varname
mayus=$(echo $varname | tr '[:lower:]' '[:upper:]' | tr '-' '_')
arreglo=" = [  ];"
cabecera="export const "
mayusculasArreglo=$mayus$arreglo

mkdir componentes constantes interfaces modales rutas rutas/definicion-rutas
mkdir constantes/modulos-externos-$varname
mkdir constantes/permisos
mkdir constantes/rutas-$varname
mkdir constantes/transloco

cd componentes/
touch componentes-$varname.ts
echo $cabecera'COMPONENETES_'$mayus$arreglo > componentes-$varname.ts

cd ..
cd constantes/
touch modulos-comunes-$varname.ts
touch ruta-json-traduccion-$varname.ts
echo $cabecera'MODULOS_COMUNES_'$mayusculasArreglo > modulos-comunes-$varname.ts
echo $cabecera'RUTA_JSON_TRADUCCION_'$mayusculasArreglo > ruta-json-traduccion-$varname.ts

cd modulos-externos-$varname
touch modulos-externos-$varname.ts
echo $cabecera'MODULOS_EXTERNOS_'$mayusculasArreglo > modulos-externos-$varname.ts

cd ..
cd permisos/
touch permisos-$varname.enum.ts
echo $cabecera'PERMISOS_'$mayusculasArreglo> permisos-$varname.enum.ts

cd ..
cd rutas-$varname
touch rutas-$varname.ts
echo $cabecera'RUTAS_'$mayus'_LAZY'$arreglo > rutas-$varname.ts

cd ..
cd transloco
touch loader-$varname.ts

cd ../..

cd interfaces/
touch $varname.interfaces.ts


cd ..
cd modales
touch modales-$varname.ts modales-entry-components-$varname.ts

echo $cabecera'MODALES_'$mayusculasArreglo > modales-$varname.ts
echo $cabecera'MODALES_ENTRY_COMPONENTS_'$mayusculasArreglo > modales-entry-components-$varname.ts

cd ..
cd rutas/definicion-rutas
touch rutas-$varname.ts
cd ..
touch rutas-componentes-$varname.ts
echo $cabecera'RUTAS_COMPONENTES_'$mayusculasArreglo > rutas-componentes-$varname.ts

cd ..
ls -l


