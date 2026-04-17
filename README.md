# 🚀 Zero Gravity Dev

> **A portable, IDE-agnostic AI development workspace** — clone it on any machine, open it in your favorite AI-powered IDE, and start building with your full workflow instantly.
>
> *By Siddiq Ahmed*

---

## What Is This?

This repository is a **pre-configured AI workspace** that works with any AI-powered IDE — **VS Code, Cursor, Windsurf, Antigravity**, or anything that supports agent instructions and MCP servers. It bundles three powerful systems into one portable stack:

| System | Purpose | Directory |
|--------|---------|-----------|
| **GSD (Get Shit Done)** | Structured project management with AI — specs, roadmaps, phased execution, and verification | `.gsd/`, `.agent/workflows/` |
| **Agent Skills** | Specialized AI agent behaviors — debugging, planning, context management, and more | `.agents/skills/` |
| **Code Review Graph** | Persistent code knowledge graph for token-efficient, context-aware code reviews | `.code-review-graph/` |

**The idea is simple:** instead of re-configuring your AI development environment every time you switch machines or IDEs, you just `git pull` this repo and everything is ready to go.

---

## 💰 How This Stack Saves Tokens (and Money)

One of the core design principles of this workspace is **aggressive token efficiency**. AI models charge per token — the less you waste, the more you can build. Here's how each component contributes:

### The Problem

Most AI coding assistants waste tokens by:
- Reading entire files when only 5 lines are relevant
- Losing context between sessions and re-reading everything
- Using expensive reasoning models for trivial tasks
- Having no memory of what was already understood

### How Zero Gravity Dev Solves It

#### 🔍 Code Review Graph — Search Instead of Read

Instead of dumping entire files into the AI's context window:

| Without CRG | With CRG |
|-------------|----------|
| "Read `auth.ts` (500 lines)" = **~2,000 tokens** | `query_graph callers_of login` = **~100 tokens** |
| "Read all files that import auth" = **~10,000 tokens** | `get_impact_radius auth.ts` = **~300 tokens** |
| "Find what tests cover this function" = **~5,000 tokens** | `query_graph tests_for login` = **~100 tokens** |

**Result:** Up to **95% fewer tokens** for code exploration tasks.

#### 🧠 Agent Skills — Context Discipline

| Skill | How It Saves Tokens |
|-------|---------------------|
| **context-fetch** | Search-first strategy — grep before reading files. Never loads a full file when a snippet will do |
| **context-compressor** | After understanding a file, creates a compressed summary. References the summary instead of re-reading |
| **context-health-monitor** | Monitors context usage (0-30% = peak, 70%+ = degraded). Triggers state dumps before quality drops |
| **token-budget** | Estimates token cost before execution. Warns if a plan will exceed budget and suggests splitting |

#### 🎯 GSD — Smart Model Routing via Task Effort

GSD tags every task with an `effort` level, enabling smart model selection:

```xml
<task type="auto" effort="low">     <!-- Fast/cheap model (formatting, simple edits) -->
<task type="auto" effort="medium">  <!-- Standard model (typical implementation) -->
<task type="auto" effort="high">    <!-- Reasoning model (complex logic) -->
<task type="auto" effort="max">     <!-- Deep reasoning (architecture, security) -->
```

| Effort | Recommended Model | Cost per 1M tokens (approx.) |
|--------|-------------------|------------------------------|
| `low` | Claude Haiku / GPT-4o Mini | ~$0.25 |
| `medium` | Claude Sonnet / GPT-4o | ~$3.00 |
| `high` | Claude Opus / GPT-4 | ~$15.00 |
| `max` | Claude Opus (extended thinking) / o1 | ~$15.00+ |

**By matching model power to task complexity, you avoid burning $15/M tokens on a task that a $0.25 model handles perfectly.**

#### 📊 Real-World Token Savings

| Scenario | Traditional Approach | Zero Gravity Dev | Savings |
|----------|---------------------|------------------|---------|
| Code review (10 files) | ~50,000 tokens | ~5,000 tokens | **90%** |
| Debug session | ~30,000 tokens | ~8,000 tokens | **73%** |
| Resume after break | ~20,000 tokens (re-read everything) | ~2,000 tokens (STATE.md) | **90%** |
| Plan 5-phase project | ~40,000 tokens | ~15,000 tokens | **62%** |

---

## 🏗️ Repository Structure

```
zero-gravity-dev/
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

1. **An AI-powered IDE** — any of the following:
   - [VS Code](https://code.visualstudio.com/) + AI extension (Copilot, Continue, Cline, etc.)
   - [Cursor](https://cursor.sh/)
   - [Windsurf](https://codeium.com/windsurf)
   - [Antigravity](https://antigravity.dev)
   - Any IDE that supports MCP servers and agent instructions
2. **Git** installed and configured
3. **MCP Server: code-review-graph** — installed and configured in your IDE's MCP settings

### Step-by-Step Setup

```bash
# 1. Clone this repo to your preferred location
git clone https://github.com/Siddiqahmed26/zero-gravity-dev.git

# 2. Open the folder in your AI-powered IDE
#    → File > Open Folder > select "zero-gravity-dev"

# 3. The workspace will auto-detect:
#    - AGENTS.md / GEMINI.md as agent instructions
#    - GSD workflows (available as /slash commands in supported IDEs)
#    - Agent Skills (loaded based on IDE support)
#    - Code Review Graph will rebuild on first use
```

### IDE-Specific Notes

| IDE | Agent Instructions | Workflows | MCP Support |
|-----|-------------------|-----------|-------------|
| **Antigravity** | `AGENTS.md` + `GEMINI.md` auto-loaded | Full `/slash` command support | ✅ Native |
| **Cursor** | Reads `.cursorrules` or project instructions | Reference workflows manually | ✅ Native |
| **VS Code + Copilot** | Reads `.github/copilot-instructions.md` | Reference workflows manually | ✅ Via extensions |
| **VS Code + Continue** | Reads `.continuerules` | Reference workflows manually | ✅ Native |
| **Windsurf** | Reads `.windsurfrules` | Reference workflows manually | ✅ Native |

> **Tip:** The `AGENTS.md` content works as universal AI instructions. For IDEs that use a different filename, simply copy or symlink the content to the expected location.

### First-Time Initialization

After opening the workspace, the AI will automatically:

1. **Load agent instructions** (`AGENTS.md` / `GEMINI.md`)
2. **Detect GSD workflows** — use `/help` to see all available slash commands
3. **Rebuild the code review graph** — happens on first interaction with CRG tools

---

## 📦 What Each System Does

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

Specialized behaviors that enhance any AI assistant's capabilities:

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

# 2. Open in your AI IDE
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

The **code-review-graph** MCP server must be configured in your IDE's MCP settings. This is a one-time setup per machine.

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
| Templates & examples | IDE app data & settings |
| Project rules & style | Conversation history & chat logs |
| SPEC, ROADMAP, STATE | Node modules, build artifacts |
| AGENTS.md / GEMINI.md | Machine-specific configs |

---

## 🤝 Contributing to Your Stack

Feel free to customize this stack for your workflow:

- **Add workflows**: Create `.md` files in `.agent/workflows/`
- **Add skills**: Create folders in `.agents/skills/` with a `SKILL.md`
- **Modify rules**: Edit `PROJECT_RULES.md` or `GSD-STYLE.md`
- **Update agent instructions**: Edit `AGENTS.md` / `GEMINI.md`
- **Add IDE-specific rules**: Create `.cursorrules`, `.windsurfrules`, etc.

After making changes, commit and push — they'll be available on all your machines.

---

## 🙏 Credits & Attribution

This workspace is built on top of two incredible open-source projects:

### [Code Review Graph](https://github.com/tirth8205/code-review-graph) ⭐ 10.8k

> Local knowledge graph for Claude Code. Builds a persistent map of your codebase so Claude reads only what matters — **6.8× fewer tokens on reviews** and up to **49× on daily coding tasks**.

- **Author:** [@tirth8205](https://github.com/tirth8205) and [42 contributors](https://github.com/tirth8205/code-review-graph/graphs/contributors)
- **License:** MIT
- **Languages:** Python (87.9%), TypeScript (11.9%)
- **Website:** [code-review-graph.com](https://code-review-graph.com)

### [Get Shit Done (GSD)](https://github.com/toonight/get-shit-done-for-antigravity) ⭐ 807

> A structured, AI-assisted project management methodology — meta-prompting system where every file is both implementation and specification.

- **Author:** [@toonight](https://github.com/toonight) (Toonight)
- **License:** MIT
- **Languages:** PowerShell (55.4%), Shell (44.6%)

### What Zero Gravity Dev Adds

This repo doesn't modify the original source code of either project. Instead, it:
- **Combines both systems** into a single portable workspace
- **Adds token efficiency documentation** and cost-saving strategies
- **Makes it IDE-agnostic** — works with VS Code, Cursor, Windsurf, and more
- **Packages everything for portability** — clone once, work from any machine

---

## 📄 License

This workspace configuration is by **Siddiq Ahmed**. The underlying tools are MIT-licensed:

- Code Review Graph — [MIT License](https://github.com/tirth8205/code-review-graph/blob/main/LICENSE)
- Get Shit Done — [MIT License](https://github.com/toonight/get-shit-done-for-antigravity/blob/main/LICENSE)

---

*Crafted with [Claude Opus](https://www.anthropic.com/claude) by [Anthropic](https://www.anthropic.com) • Powered by GSD, Agent Skills, and Code Review Graph*
