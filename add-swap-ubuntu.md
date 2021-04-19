## first 

Verificar si se tiene una particion swap 
```bash

swapon

```

tiene que mostrarse una carpeta por tanto se la debe eliminar,

1. sudo swapoff /swapfile

2. sudo rm swapfile

Crear la nueva particion

3. sudo dd id=/dev/zero of=/swapfile bs=1M count=8192 status=progress

4. sudo chmod 600 /swapfile
5. sudo mkswap /swapfile
6. sudo swapon /swapfile

Verificar que se ha creado la paricion swap

7. swapon
