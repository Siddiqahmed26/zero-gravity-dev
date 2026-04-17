#!/bin/bash
# ============================================================
#  Zero Gravity Dev — One-Command Setup (macOS / Linux)
# ============================================================

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "  🚀 Zero Gravity Dev — Setup"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

# --- Step 1: Check Python ---
echo "[1/4] Checking Python..."
if command -v python3 &> /dev/null; then
    PY_VERSION=$(python3 --version 2>&1)
    PY_MAJOR=$(python3 -c "import sys; print(sys.version_info.major)")
    PY_MINOR=$(python3 -c "import sys; print(sys.version_info.minor)")
    if [ "$PY_MAJOR" -lt 3 ] || ([ "$PY_MAJOR" -eq 3 ] && [ "$PY_MINOR" -lt 10 ]); then
        echo "  ✗ Python 3.10+ required, found $PY_VERSION"
        exit 1
    fi
    echo "  ✓ $PY_VERSION"
    PY_CMD="python3"
else
    echo "  ✗ Python not found. Install Python 3.10+ from https://python.org"
    exit 1
fi

# --- Step 2: Check Git ---
echo "[2/4] Checking Git..."
if command -v git &> /dev/null; then
    GIT_VERSION=$(git --version)
    echo "  ✓ $GIT_VERSION"
else
    echo "  ✗ Git not found. Install from https://git-scm.com"
    exit 1
fi

# --- Step 3: Install Code Review Graph ---
echo "[3/4] Installing Code Review Graph..."
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CRG_PATH="$SCRIPT_DIR/code-review-graph"

if [ -d "$CRG_PATH" ]; then
    pip install "$CRG_PATH" --quiet 2>&1
    if [ $? -eq 0 ]; then
        CRG_VER=$(pip show code-review-graph 2>/dev/null | grep "Version:" | awk '{print $2}')
        echo "  ✓ Code Review Graph installed (v$CRG_VER)"
    else
        echo "  ✗ Failed to install CRG. Run manually: pip install ./code-review-graph"
        exit 1
    fi
else
    echo "  ✗ code-review-graph/ folder not found. Re-clone the repo."
    exit 1
fi

# --- Step 4: Build initial graph ---
echo "[4/4] Building knowledge graph..."
code-review-graph build --full-rebuild > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "  ✓ Knowledge graph built"
else
    echo "  ⚠ Graph build had issues (this is OK for empty projects)"
fi

# --- Done ---
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "  ✅ Zero Gravity Dev is ready!"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "  Open this folder in your IDE and start building."
echo ""
echo "  Quick commands:"
echo "    /new-project  — Start a new project with GSD"
echo "    /help         — See all available commands"
echo "    /plan         — Plan your project phases"
echo "    /execute      — Execute a phase"
echo ""
