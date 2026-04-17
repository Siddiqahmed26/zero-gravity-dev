# Zero Gravity Dev - Setup Script (Windows PowerShell)

Write-Host ""
Write-Host "====================================================" -ForegroundColor Cyan
Write-Host "  Zero Gravity Dev - Setup" -ForegroundColor White
Write-Host "====================================================" -ForegroundColor Cyan
Write-Host ""

# Step 1: Check Python
Write-Host "[1/4] Checking Python..." -ForegroundColor Yellow
$pythonOk = $false
$pyCmd = "python"

try {
    $pyOut = python --version 2>&1
} catch {
    try {
        $pyOut = py --version 2>&1
        $pyCmd = "py"
    } catch {
        $pyOut = ""
    }
}

$pyStr = $pyOut.ToString()
if ($pyStr -match "Python (\d+)\.(\d+)") {
    $major = [int]$Matches[1]
    $minor = [int]$Matches[2]
    if ($major -ge 3 -and $minor -ge 10) {
        Write-Host "  OK: $pyStr (using $pyCmd)" -ForegroundColor Green
        $pythonOk = $true
    }
    else {
        Write-Host "  FAIL: Python 3.10+ required, found $pyStr" -ForegroundColor Red
    }
} else {
    Write-Host "  FAIL: Python not found. Install from https://python.org" -ForegroundColor Red
}

if (-not $pythonOk) { exit 1 }

# Step 2: Check Git
Write-Host "[2/4] Checking Git..." -ForegroundColor Yellow
$gitOk = $false
try {
    $gitOut = git --version 2>&1
    Write-Host "  OK: $gitOut" -ForegroundColor Green
    $gitOk = $true
}
catch {
    Write-Host "  FAIL: Git not found. Install from https://git-scm.com" -ForegroundColor Red
}
if (-not $gitOk) { exit 1 }

# Step 3: Install Code Review Graph
Write-Host "[3/4] Installing Code Review Graph..." -ForegroundColor Yellow
$crgPath = Join-Path $PSScriptRoot "code-review-graph"
if (Test-Path $crgPath) {
    if ($pyCmd -eq "py") {
        py -m pip install $crgPath --quiet 2>&1 | Out-Null
    } else {
        pip install $crgPath --quiet 2>&1 | Out-Null
    }
    
    if ($LASTEXITCODE -eq 0) {
        Write-Host "  OK: Code Review Graph installed" -ForegroundColor Green
    }
    else {
        Write-Host "  FAIL: Run manually: pip install ./code-review-graph" -ForegroundColor Red
        exit 1
    }
}
else {
    Write-Host "  FAIL: code-review-graph/ folder not found" -ForegroundColor Red
    exit 1
}

# Step 4: Build graph
Write-Host "[4/4] Building knowledge graph..." -ForegroundColor Yellow
code-review-graph build --full-rebuild 2>&1 | Out-Null
if ($LASTEXITCODE -eq 0) {
    Write-Host "  OK: Knowledge graph built" -ForegroundColor Green
}
else {
    Write-Host "  WARN: Graph build had issues (OK for empty projects)" -ForegroundColor Yellow
}

# Done
Write-Host ""
Write-Host "====================================================" -ForegroundColor Green
Write-Host "  DONE! Zero Gravity Dev is ready." -ForegroundColor White
Write-Host "====================================================" -ForegroundColor Green
Write-Host ""
Write-Host "  Open this folder in your IDE and start building." -ForegroundColor White
Write-Host ""
Write-Host "  Commands:" -ForegroundColor White
Write-Host "    /new-project  - Start a new project" -ForegroundColor Gray
Write-Host "    /help         - See all commands" -ForegroundColor Gray
Write-Host "    /plan         - Plan your project" -ForegroundColor Gray
Write-Host "    /execute      - Execute a phase" -ForegroundColor Gray
Write-Host ""
