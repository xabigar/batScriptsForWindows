@echo off
ECHO INICIANDO
set ruta=../../Pictures
cd %ruta%
set anio=%date:~6,4%
set mes=%date:~3,2%
set dia=%date:~0,2%
set nombre=FotosVideos_%anio%_%mes%_%dia%.zip
set fichero=Txotxolokerik
ECHO COMPRIMIENDO CARPETA %ruta%/%fichero% a %nombre%.zip ...
zip -r %nombre% %fichero%
ECHO CARPETA COMPRIMIDA
ECHO MOVIENDO FICHERO A DISCO DURO
set destino=f:\
move %nombre% %destino%
ECHO EL FICHERO SE HA MOVIDO CORRECTAMENTE
PAUSE