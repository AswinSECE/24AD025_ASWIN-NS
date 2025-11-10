#!/usr/bin/env pwsh

Write-Host "Installing AI Diet Planner..." -ForegroundColor Green
Write-Host ""

Write-Host "Installing root dependencies..." -ForegroundColor Yellow
npm install
if ($LASTEXITCODE -ne 0) {
    Write-Host "Error installing root dependencies" -ForegroundColor Red
    Read-Host "Press Enter to exit"
    exit 1
}

Write-Host ""
Write-Host "Installing server dependencies..." -ForegroundColor Yellow
Set-Location server
npm install
if ($LASTEXITCODE -ne 0) {
    Write-Host "Error installing server dependencies" -ForegroundColor Red
    Read-Host "Press Enter to exit"
    exit 1
}

Write-Host ""
Write-Host "Installing client dependencies..." -ForegroundColor Yellow
Set-Location ..\client
npm install
if ($LASTEXITCODE -ne 0) {
    Write-Host "Error installing client dependencies" -ForegroundColor Red
    Read-Host "Press Enter to exit"
    exit 1
}

Write-Host ""
Write-Host "Installation complete!" -ForegroundColor Green
Write-Host ""
Write-Host "To start the application:" -ForegroundColor Cyan
Write-Host "1. Run 'npm run dev' from the root directory, or" -ForegroundColor White
Write-Host "2. Start server: cd server && npm run dev" -ForegroundColor White
Write-Host "3. Start client: cd client && npm start" -ForegroundColor White
Write-Host ""
Write-Host "Frontend will be available at: http://localhost:3000" -ForegroundColor Cyan
Write-Host "Backend API will be available at: http://localhost:5000" -ForegroundColor Cyan
Write-Host ""
Read-Host "Press Enter to exit"
