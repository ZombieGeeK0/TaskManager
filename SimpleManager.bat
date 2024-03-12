@echo off
start Alert.vbs

:menu
color 0a
cls
title ADMINISTRADOR DE TAREAS By ZombieGeek0
echo -------------------------------------------------------------------------------------------------------------
echo ADMINISTRADOR DE PROCESOS DE WINDOWS By ZombieGeek0
echo -------------------------------------------------------------------------------------------------------------
echo  ,ggg,        gg                                         
echo dP""Y8b       dP        ,dPYb, ,dPYb,                    
echo Yb, `88      d8'        IP'`Yb IP'`Yb                    
echo  `"  88    ,dP'    gg   I8  8I I8  8I                    
echo      88aaad8"      ""   I8  8' I8  8'                    
echo      88""""Yb,     gg   I8 dP  I8 dP   ,ggg,    ,gggggg, 
echo      88     "8b    88   I8dP   I8dP   i8" "8i   dP""""8I 
echo      88      `8i   88   I8P    I8P    I8, ,8I  ,8'    8I 
echo      88       Yb,_,88,_,d8b,_ ,d8b,_  `YbadP' ,dP     Y8,
echo      88        Y88P""Y88P'"Y888P'"Y88888P"Y8888P      `Y8
echo.
echo 01. Lista de procesos
echo 02. Eliminar un proceso activo determinado
echo 03. Salir
echo -------------------------------------------------------------------------------------------------------------
set /p answer= INGRESE LA OPCION QUE HA ELEGIDO:
if /i %asnwer%==01 goto list
if /i %answer%==02 goto kill
if /i %answer%==03 goto error
else goto error

:list
color 0a
cls
title LISTA DE TAREAS
echo -------------------------------------------------------------------------------------------------------------
tasklist
echo -------------------------------------------------------------------------------------------------------------
pause
goto menu

:kill
color 0a
cls
title ELIMINADOR DE TAREAS
echo -------------------------------------------------------------------------------------------------------------
set /p tarea= INGRESE LA TAREA A MATAR (Ejemplo: notepad.exe):
echo -------------------------------------------------------------------------------------------------------------
taskkill /F /IM %tarea%
pause
goto menu

:error
color 0a
cls
title SALIDA DEL PROGRAMA
pause
exit
