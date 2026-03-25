@echo off
setlocal
cd /d "%~dp0tempo work"
echo ===========================================
echo       ECO-GUARDIAO: O CICLO DAS MASCARAS
echo ===========================================
echo Abrindo o servidor e o jogo...

:: Usa cmd /c para evitar problemas de execucao de scripts
if exist "node_modules\.bin\vite.cmd" (
    cmd /c "node_modules\.bin\vite.cmd" --open
) else (
    cmd /c npx vite --open
)

if %errorlevel% neq 0 (
    echo.
    echo [ERRO] Nao foi possivel abrir o jogo.
    echo Verifique se a pasta "node_modules" existe dentro de "tempo work".
    pause
)
