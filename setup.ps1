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

# Step 5: Install zg-init command
Write-Host "[5/5] Installing zg-init terminal command..." -ForegroundColor Yellow
try {
    $profileDir = Split-Path -Parent $PROFILE
    if (-not (Test-Path $profileDir)) { New-Item -ItemType Directory -Path $profileDir -ErrorAction SilentlyContinue | Out-Null }
    if (-not (Test-Path $PROFILE)) { New-Item -ItemType File -Path $PROFILE -ErrorAction SilentlyContinue | Out-Null }
    
    $profileContent = Get-Content $PROFILE -ErrorAction SilentlyContinue
    if ($profileContent -match "function zg-init") {
        Write-Host "  OK: 'zg-init' already installed" -ForegroundColor Green
    } else {
        $function = @"

# Zero Gravity Dev initialization command
function zg-init {
    Write-Host "🚀 Initializing Zero Gravity Workspace..." -ForegroundColor Cyan
    `$source = "$PSScriptRoot"
    Copy-Item "`$source\.gsd", "`$source\.agents", "`$source\.agent" -Destination . -Recurse -Force -ErrorAction SilentlyContinue
    Copy-Item "`$source\AGENTS.md", "`$source\GEMINI.md", "`$source\PROJECT_RULES.md", "`$source\GSD-STYLE.md", "`$source\.mcp.json" -Destination . -Force -ErrorAction SilentlyContinue
    Write-Host "✅ Done! Zero Gravity is fully active in this folder." -ForegroundColor Green
}
"@
        Add-Content -Path $PROFILE -Value $function
        Write-Host "  OK: 'zg-init' added to PowerShell profile" -ForegroundColor Green
    }
} catch {
    Write-Host "  WARN: Could not install zg-init command automatically" -ForegroundColor DarkYellow
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
Write-Host "    zg-init       - Use in NEW folders to instantly copy AI config" -ForegroundColor Gray
Write-Host "    /help         - See all commands" -ForegroundColor Gray
Write-Host "    /plan         - Plan your project" -ForegroundColor Gray
Write-Host "    /execute      - Execute a phase" -ForegroundColor Gray
Write-Host ""
