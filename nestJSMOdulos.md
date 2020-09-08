# CREAR OTROS MODULOS EN NEST JS

$ yo --help


1. $ rest generate module [NOMBRE-TABLA]

en cada carpeta de las tablas el siguiente comando,

$ yo man-lab-yo-nest:api Tabla (la **primera** letra siempre **Mayúscula**)

En cada entity utilizar el snipet: mg-nest-


### RELACIONAR TABLAS

OneToMany(
type => ProductoEntity,
prod => prod.establecimiento)

prductos: ProdutosEntity[];

### EN DTO  

```typescript
@Matches (letras-espacios-tildes)
@ValorEstaDEntroArreglo([1,0])
habilitado: 1|0 = 1;

```
 En cada Modulo el snipet:

**mc-nest-init-module-decorator
