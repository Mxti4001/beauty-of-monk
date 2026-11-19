@echo off
title Beauty of Monk - Server Launcher
cd /d "%~dp0"

echo ===================================================
echo     Beauty of Monk - Monastic Life Simulation
echo ===================================================
echo.
echo Starting local web server on port 8080...
start "" /b python -m http.server 8080 --directory "%~dp0"

echo Starting Cloudflare Tunnel for Phone Access...
echo.
echo ===================================================
echo When the URL appears below, open it on your phone:
echo ===================================================
echo.

cloudflared.exe tunnel --url http://localhost:8080

pause
