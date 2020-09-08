# Rutas lazy y definicion de rutas 

* constante: tiene todos las rutas de los componentes y a los módulos que van a ir.

```typescript
loadChildren()=> import..


```

definicion Ruta : define el módulo y la gestión:

* Inicio
* gestion

Routing: solo llama al ...lazy

## Ejemplo

EMPRESA_CLIENTE -> CARGO -> PAGO

En cargo-cliente debe contener las rutas_pago_lazy

|Empresa|Cargo| Pago| RecaudoDetalle |
|---|---|---|---|
| xxx | + lazy <br>idEmpCli/cargo-cliente-mod | +lazy <br> idCargo/pago-module | +lazy <br>idPago/recaudo-detalle-mod |
| + Routing <br>...RUTAS_CARGO | + Routing <br> ...RUTAS_PAGO_LAZY <br> Componentes | + Rounting <br> ...RUTAS_RECAUDO_DETALLE_PAGO_LAZY <br> Componentes | + Routing | 
