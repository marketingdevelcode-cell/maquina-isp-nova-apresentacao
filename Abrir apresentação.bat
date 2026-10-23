@echo off
chcp 65001 >nul
title Maquina.ISP - Apresentacao (servidor local)
cd /d "%~dp0"

echo.
echo   ============================================
echo     MAQUINA.ISP - APRESENTACAO COMERCIAL
echo   ============================================
echo.

REM A porta 8777 e fixa de proposito: o navegador guarda os leads
REM amarrados ao endereco. Trocar de porta esconde os leads ja salvos.
netstat -ano | findstr /R /C:":8777 .*LISTENING" >nul 2>nul
if not errorlevel 1 goto :ja_rodando

where python >nul 2>nul
if errorlevel 1 goto :sem_python

echo   Iniciando o servidor local...
start "Servidor Maquina.ISP" /min python -m http.server 8777 --bind 127.0.0.1
timeout /t 3 /nobreak >nul

netstat -ano | findstr /R /C:":8777 .*LISTENING" >nul 2>nul
if errorlevel 1 goto :falhou
goto :abrir

:ja_rodando
echo   O servidor ja estava rodando nesta maquina.
echo   Vou apenas abrir a apresentacao.
echo.

:abrir
start "" "http://localhost:8777/index.html"
echo.
echo   Pronto. A apresentacao abriu no navegador.
echo.
echo   Endereco: http://localhost:8777/index.html
echo   Nao precisa de internet.
echo.
echo   Os leads ficam salvos neste computador e sobrevivem a
echo   desligar a maquina. Abra SEMPRE por este atalho: se abrir
echo   o index.html direto, o navegador trata como outro endereco
echo   e os leads ja salvos nao aparecem.
echo.
echo   IMPORTANTE: mantenha esta janela aberta durante o evento.
echo   Ao terminar, exporte a planilha de leads e so entao
echo   pressione qualquer tecla aqui para encerrar.
echo.
pause >nul

taskkill /FI "WINDOWTITLE eq Servidor Maquina.ISP*" /T /F >nul 2>nul
exit /b 0

:falhou
echo.
echo   *** O SERVIDOR NAO SUBIU ***
echo.
echo   A porta 8777 pode estar bloqueada por outro programa.
echo   NAO troque a porta: os leads ja salvos estao amarrados
echo   ao endereco localhost:8777 e sumiriam da tela.
echo.
echo   Tente reiniciar o computador e rodar este atalho de novo.
echo.
pause
exit /b 1

:sem_python
echo.
echo   Python nao foi encontrado neste computador.
echo.
echo   Alternativa: abra o arquivo index.html direto no navegador.
echo   Atencao: nesse modo o navegador usa outro endereco, entao
echo   os leads salvos pelo atalho nao vao aparecer (e vice-versa).
echo   Escolha um modo e use sempre o mesmo durante o evento.
echo.
pause
exit /b 1
