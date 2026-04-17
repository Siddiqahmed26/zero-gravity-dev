# ============================================================
#  Zero Gravity Dev — One-Command Setup (Windows PowerShell)
# ============================================================

Write-Host ""
Write-Host "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" -ForegroundColor Cyan
Write-Host "  🚀 Zero Gravity Dev — Setup" -ForegroundColor White
Write-Host "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" -ForegroundColor Cyan
Write-Host ""

# --- Step 1: Check Python ---
Write-Host "[1/4] Checking Python..." -ForegroundColor Yellow
try {
    $pyVersion = python --version 2>&1
    if ($pyVersion -match "Python (\d+)\.(\d+)") {
        $major = [int]$Matches[1]
        $minor = [int]$Matches[2]
        if ($major -lt 3 -or ($major -eq 3 -and $minor -lt 10)) {
            Write-Host "  ✗ Python 3.10+ required, found $pyVersion" -ForegroundColor Red
            exit 1
        }
        Write-Host "  ✓ $pyVersion" -ForegroundColor Green
    }
} catch {
    Write-Host "  ✗ Python not found. Install Python 3.10+ from https://python.org" -ForegroundColor Red
    exit 1
}

# --- Step 2: Check Git ---
Write-Host "[2/4] Checking Git..." -ForegroundColor Yellow
try {
    $gitVersion = git --version 2>&1
    Write-Host "  ✓ $gitVersion" -ForegroundColor Green
} catch {
    Write-Host "  ✗ Git not found. Install from https://git-scm.com" -ForegroundColor Red
    exit 1
}

# --- Step 3: Install Code Review Graph ---
Write-Host "[3/4] Installing Code Review Graph..." -ForegroundColor Yellow
$crgPath = Join-Path $PSScriptRoot "code-review-graph"
if (Test-Path $crgPath) {
    pip install $crgPath --quiet 2>&1 | Out-Null
    if ($LASTEXITCODE -eq 0) {
        $crgVersion = pip show code-review-graph 2>&1 | Select-String "Version:" | ForEach-Object { $_.ToString().Trim() }
        Write-Host "  ✓ Code Review Graph installed ($crgVersion)" -ForegroundColor Green
    } else {
        Write-Host "  ✗ Failed to install CRG. Run manually: pip install ./code-review-graph" -ForegroundColor Red
        exit 1
    }
} else {
    Write-Host "  ✗ code-review-graph/ folder not found. Re-clone the repo." -ForegroundColor Red
    exit 1
}

# --- Step 4: Build initial graph ---
Write-Host "[4/4] Building knowledge graph..." -ForegroundColor Yellow
code-review-graph build --full-rebuild 2>&1 | Out-Null
if ($LASTEXITCODE -eq 0) {
    Write-Host "  ✓ Knowledge graph built" -ForegroundColor Green
} else {
    Write-Host "  ⚠ Graph build had issues (this is OK for empty projects)" -ForegroundColor Yellow
}

# --- Done ---
Write-Host ""
Write-Host "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" -ForegroundColor Green
Write-Host "  ✅ Zero Gravity Dev is ready!" -ForegroundColor White
Write-Host "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" -ForegroundColor Green
Write-Host ""
Write-Host "  Open this folder in your IDE and start building." -ForegroundColor White
Write-Host ""
Write-Host "  Quick commands:" -ForegroundColor White
Write-Host "    /new-project  — Start a new project with GSD" -ForegroundColor Gray
Write-Host "    /help         — See all available commands" -ForegroundColor Gray
Write-Host "    /plan         — Plan your project phases" -ForegroundColor Gray
Write-Host "    /execute      — Execute a phase" -ForegroundColor Gray
Write-Host ""
