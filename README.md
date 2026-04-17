# 🚀 Antigravity Ultimate Stack

> **A portable AI-powered development workspace** — clone it on any machine, open it in [Antigravity](https://antigravity.dev), and start building with your full AI workflow instantly.

---

## What Is This?

This repository is a **pre-configured AI workspace** designed for the [Antigravity IDE](https://antigravity.dev). It bundles together three powerful AI-assisted development systems into a single, portable stack:

| Plugin | Purpose | Directory |
|--------|---------|-----------|
| **GSD (Get Shit Done)** | Structured project management with AI — specs, roadmaps, phased execution, and verification | `.gsd/`, `.agent/workflows/` |
| **Agent Skills** | Specialized AI agent behaviors — debugging, planning, context management, and more | `.agents/skills/` |
| **Code Review Graph** | Persistent code knowledge graph for token-efficient, context-aware code reviews | `.code-review-graph/` |

**The idea is simple:** instead of re-configuring your AI development environment every time you switch machines, you just `git pull` this repo and everything is ready to go.

---

## 🏗️ Repository Structure

```
antigravity-ultimate-stack/
│
├── README.md                  # ← You are here
├── .gitignore                 # Git ignore rules
│
├── AGENTS.md                  # AI agent instructions (code-review-graph MCP)
├── GEMINI.md                  # Gemini-specific AI agent instructions
├── GSD-STYLE.md               # GSD writing style & conventions reference
├── PROJECT_RULES.md           # GSD canonical methodology rules
│
├── .agent/                    # GSD Workflows (slash commands)
│   └── workflows/             # 27 workflow commands (/plan, /execute, /verify, etc.)
│
├── .agents/                   # Agent Skills (specialized AI behaviors)
│   └── skills/
│       ├── codebase-mapper/   # Analyzes codebase structure & tech debt
│       ├── context-compressor/# Compresses context for token efficiency
│       ├── context-fetch/     # Search-first file reading strategy
│       ├── context-health-monitor/ # Monitors context quality
│       ├── debugger/          # Systematic debugging with state
│       ├── empirical-validation/   # Proof-based verification
│       ├── executor/          # Plan execution with atomic commits
│       ├── plan-checker/      # Validates plans before execution
│       ├── planner/           # Creates executable phase plans
│       ├── token-budget/      # Token budget estimation & tracking
│       └── verifier/          # Validates work against spec
│
├── .gsd/                      # GSD Project State
│   ├── SPEC.md                # Project specification (requirements)
│   ├── ROADMAP.md             # Phase-based project roadmap
│   ├── STATE.md               # Session memory (persists across conversations)
│   ├── JOURNAL.md             # Development journal
│   ├── DECISIONS.md           # Architecture decision log
│   ├── TODO.md                # Quick todo items
│   ├── templates/             # 24 document templates (plans, specs, etc.)
│   ├── examples/              # 4 workflow examples & references
│   └── phases/                # Phase-specific plan files (created during work)
│
└── .code-review-graph/        # Code Review Graph (auto-generated)
    ├── .gitignore              # Excludes generated database files
    └── graph.db                # ⚠️ Auto-generated, NOT committed to git
```

---

## 🚀 Quick Start — New Machine Setup

### Prerequisites

1. **[Antigravity IDE](https://antigravity.dev)** installed on your machine
2. **Git** installed and configured
3. **MCP Server: code-review-graph** — installed and configured in Antigravity settings

### Step-by-Step Setup

```bash
# 1. Clone this repo to your Desktop (or wherever you prefer)
git clone https://github.com/<your-username>/antigravity-ultimate-stack.git

# 2. Open the folder in Antigravity IDE
#    → File > Open Folder > select "antigravity-ultimate-stack"

# 3. The workspace will auto-detect:
#    - GSD workflows (available as /slash commands)
#    - Agent Skills (auto-loaded by Antigravity)
#    - AGENTS.md & GEMINI.md (loaded as AI instructions)
#    - Code Review Graph will rebuild on first use
```

### First-Time Initialization

After opening the workspace in Antigravity, the AI will automatically:

1. **Load `AGENTS.md` / `GEMINI.md`** as agent instructions
2. **Detect GSD workflows** — use `/help` to see all available slash commands
3. **Rebuild the code review graph** — happens on first interaction with CRG tools

To verify everything works:
```
/help          → Shows all GSD slash commands
/progress      → Shows current roadmap position
```

---

## 📦 What Each Plugin Does

### 🎯 GSD (Get Shit Done)

A structured AI-assisted project management methodology. It enforces a disciplined workflow:

```
SPEC → PLAN → EXECUTE → VERIFY → COMMIT
```

**Key slash commands:**
| Command | Description |
|---------|-------------|
| `/new-project` | Initialize a new project with deep context gathering |
| `/plan` | Decompose requirements into executable phases |
| `/execute` | Execute a specific phase with focused context |
| `/verify` | Validate work against spec with empirical evidence |
| `/progress` | Show current position in roadmap |
| `/debug` | Systematic debugging with persistent state |
| `/pause` | Dump state for clean session handoff |
| `/resume` | Restore context from previous session |
| `/help` | Show all available commands |

**Configuration files:**
- `PROJECT_RULES.md` — Canonical methodology rules
- `GSD-STYLE.md` — Writing style and conventions
- `.gsd/SPEC.md` — Your project specification
- `.gsd/ROADMAP.md` — Phase-based roadmap

### 🧠 Agent Skills

Specialized behaviors that enhance the AI's capabilities:

| Skill | What It Does |
|-------|-------------|
| **codebase-mapper** | Analyzes structure, patterns, and tech debt |
| **context-compressor** | Maximizes token efficiency by compressing context |
| **context-fetch** | Search-first strategy to minimize unnecessary file reads |
| **context-health-monitor** | Triggers state dumps before quality degrades |
| **debugger** | Systematic debugging with persistent state tracking |
| **empirical-validation** | Requires proof before marking work complete |
| **executor** | Executes plans with atomic commits & checkpoints |
| **plan-checker** | Catches issues in plans before execution |
| **planner** | Creates executable phase plans with dependency analysis |
| **token-budget** | Estimates and tracks token budget to prevent overflow |
| **verifier** | Validates work against spec requirements |

### 🔍 Code Review Graph (CRG)

A persistent knowledge graph that understands your codebase structure. It uses Tree-sitter parsing to build a structural graph and provides:

- **Impact analysis** — Understand blast radius of changes
- **Smart code review** — Risk-scored, priority-ordered review guidance
- **Semantic search** — Find functions/classes by meaning, not just name
- **Architecture overview** — Community detection and coupling analysis

The graph database (`graph.db`) is **auto-generated** and **not committed** to git. It rebuilds automatically when you start working on a new machine.

---

## 🔄 Workflow: Switching Machines

When you switch to a new laptop:

```bash
# 1. Pull the latest changes
git pull origin main

# 2. Open in Antigravity IDE
#    Everything auto-loads. The CRG graph rebuilds on first use.

# 3. Resume your work
/resume        # Restores context from STATE.md
/progress      # Shows where you left off
```

When you finish a session on any machine:

```bash
# 1. Save your state
/pause         # Dumps current state for next session

# 2. Commit and push
git add -A
git commit -m "chore: session state update"
git push origin main
```

---

## ⚙️ MCP Server Configuration

The **code-review-graph** MCP server must be configured in your Antigravity IDE settings. This is a one-time setup per machine.

Refer to the [code-review-graph documentation](https://github.com/nicobailey/code-review-graph) for installation instructions.

Once installed, the `AGENTS.md` and `GEMINI.md` files in this repo automatically instruct the AI to use the graph tools first for code exploration, impact analysis, and reviews.

---

## 🗺️ Starting a New Project

This workspace is a **meta-workspace** — it's the environment configuration, not a project itself. To start a new project inside this workspace:

```
/new-project    # GSD will guide you through spec creation
```

Or manually:
1. Edit `.gsd/SPEC.md` with your project vision and requirements
2. Set the status to `FINALIZED` when ready
3. Run `/plan` to decompose into phases
4. Run `/execute` to start building

---

## 📝 What Gets Committed vs What Stays Local

| Committed (in this repo) | Local Only (per machine) |
|--------------------------|--------------------------|
| GSD workflows & skills | `.code-review-graph/graph.db` (auto-regenerated) |
| Templates & examples | Antigravity app data (`~/.gemini/`) |
| Project rules & style | Conversation history & brain data |
| SPEC, ROADMAP, STATE | Node modules, build artifacts |
| AGENTS.md / GEMINI.md | IDE-specific settings |

---

## 🤝 Contributing to Your Stack

Feel free to customize this stack for your workflow:

- **Add workflows**: Create `.md` files in `.agent/workflows/`
- **Add skills**: Create folders in `.agents/skills/` with a `SKILL.md`
- **Modify rules**: Edit `PROJECT_RULES.md` or `GSD-STYLE.md`
- **Update agent instructions**: Edit `AGENTS.md` / `GEMINI.md`

After making changes, commit and push — they'll be available on all your machines.

---

## 📄 License

This is a personal workspace configuration. Use it as inspiration for your own AI-powered development setup.

---

*Built with [Antigravity IDE](https://antigravity.dev) • Powered by GSD, Agent Skills, and Code Review Graph*
