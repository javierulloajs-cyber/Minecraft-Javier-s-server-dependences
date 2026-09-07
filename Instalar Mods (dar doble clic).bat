@echo off
title Instalador Automatico de Mods para Minecraft
color 0A

echo ====================================================
echo      INSTALADOR AUTOMATICO DE MODS DE MINECRAFT
echo ====================================================
echo.
echo Copiando archivos a la carpeta %APPDATA%\.minecraft ...
echo.

:: Crear la carpeta .minecraft y subcarpetas si no existen
if not exist "%APPDATA%\.minecraft" mkdir "%APPDATA%\.minecraft"
if not exist "%APPDATA%\.minecraft\mods" mkdir "%APPDATA%\.minecraft\mods"
if not exist "%APPDATA%\.minecraft\config" mkdir "%APPDATA%\.minecraft\config"

:: Copiar mods (reemplaza o añade sin borrar lo anterior)
if exist "mods" (
    xcopy "mods" "%APPDATA%\.minecraft\mods" /E /I /Y /Q
    echo [OK] Carpeta 'mods' copiada con exito.
) else (
    echo [ERROR] No se encontro la carpeta 'mods' junto a este script.
)

:: Copiar configs si existen
if exist "config" (
    xcopy "config" "%APPDATA%\.minecraft\config" /E /I /Y /Q
    echo [OK] Carpeta 'config' copiada con exito.
) else (
    echo [Aviso] No se detecto la carpeta 'config', saltando...
)

echo.
echo ====================================================
echo   Proceso finalizado. !Ya puedes abrir Minecraft!
echo ====================================================
echo.
pause