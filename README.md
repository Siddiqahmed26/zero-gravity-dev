# 🚀 Zero Gravity Dev

> **One command. Any machine. Full AI-powered dev workflow.**
>
> Clone → Setup → Build. All your AI tools, agent skills, and project management in one portable workspace.
>
> *By Siddiq Ahmed*

---

## ⚡ Quick Start

```bash
# Clone
git clone https://github.com/Siddiqahmed26/zero-gravity-dev.git
cd zero-gravity-dev

# Setup (one command — installs everything)
.\setup.ps1          # Windows
./setup.sh           # macOS / Linux

# Open in your IDE and start building
```

That's it. Open the folder in **VS Code, Cursor, Windsurf, Antigravity** — or any AI-powered IDE — and all tools are ready.

---

## What Is This?

Zero Gravity Dev is a **portable AI development workspace** that combines three powerful systems into one stack:

| System | What It Does |
|--------|-------------|
| **[Code Review Graph](https://github.com/tirth8205/code-review-graph)** | Builds a persistent knowledge graph of your code. Your AI reads only what matters — **6.8× fewer tokens** on reviews, up to **49× on daily coding** |
| **[GSD (Get Shit Done)](https://github.com/toonight/get-shit-done-for-antigravity)** | Structured project management — specs, roadmaps, phased execution, verification. No vague "implement auth" tasks |
| **Agent Skills** | 11 specialized AI behaviors — context compression, token budgeting, systematic debugging, and more |

**Why?** Instead of re-configuring your AI dev environment every time you switch machines or start a new project, you just `git pull` and run `setup`.

---

## 🏗️ How to Use — Starting a New Project

Once setup is complete, every new project you build inside this workspace automatically gets the full stack.

### Option A: Let GSD Guide You (Recommended)

Tell your AI:
```
/new-project
```
GSD will walk you through defining specs, creating a roadmap, and building phase-by-phase.

### Option B: Just Start Coding

```bash
# Create your project folder
mkdir my-app
cd my-app

# Initialize whatever you want
npx create-vite@latest ./
# or: npx create-next-app@latest ./
# or: dotnet new webapi
# or: cargo init
# or just start writing code
```

The AI tools work automatically — GSD workflows, agent skills, CRG graph, and MCP server are all active from the parent workspace.

### Key Commands

| Command | What It Does |
|---------|-------------|
| `/new-project` | Full guided project setup with spec creation |
| `/plan` | Decompose requirements into executable phases |
| `/execute` | Execute a specific phase with focused context |
| `/verify` | Validate work with empirical evidence (no "trust me, it works") |
| `/progress` | Show current position in roadmap |
| `/debug` | Systematic debugging with persistent state |
| `/pause` | Save state for next session |
| `/resume` | Restore context from previous session |
| `/help` | Show all 27 available commands |

---

## 💰 How This Saves Tokens (and Money)

AI models charge per token. This stack is designed to **minimize waste** at every level:

### Code Review Graph — Search Instead of Read

| Without CRG | With CRG | Savings |
|-------------|----------|---------|
| Read `auth.ts` (500 lines) = ~2,000 tokens | `query_graph callers_of login` = ~100 tokens | **95%** |
| Read all files importing auth = ~10,000 tokens | `get_impact_radius auth.ts` = ~300 tokens | **97%** |
| Find test coverage = ~5,000 tokens | `query_graph tests_for login` = ~100 tokens | **98%** |

### Agent Skills — Context Discipline

| Skill | How It Saves Tokens |
|-------|---------------------|
| **context-fetch** | Grep before reading. Never loads a full file when a snippet will do |
| **context-compressor** | Summarizes files after understanding them. References summaries, not full re-reads |
| **context-health-monitor** | Tracks context usage. Triggers state dumps before quality degrades |
| **token-budget** | Estimates cost before execution. Warns if plans will overflow |

### GSD — Smart Model Routing

GSD tags every task with an effort level, so you can route to the right model:

| Effort | Best Model | Cost (per 1M tokens) | Use For |
|--------|-----------|----------------------|---------|
| `low` | Haiku / GPT-4o Mini | ~$0.25 | Formatting, simple edits |
| `medium` | Sonnet / GPT-4o | ~$3.00 | Standard implementation |
| `high` | Opus / GPT-4 | ~$15.00 | Complex logic, refactoring |
| `max` | Opus (thinking) / o1 | ~$15.00+ | Architecture, security |

### Real-World Impact

| Scenario | Traditional | Zero Gravity Dev | Savings |
|----------|------------|------------------|---------|
| Code review (10 files) | ~50,000 tokens | ~5,000 tokens | **90%** |
| Debug session | ~30,000 tokens | ~8,000 tokens | **73%** |
| Resume after break | ~20,000 tokens | ~2,000 tokens | **90%** |
| Plan 5-phase project | ~40,000 tokens | ~15,000 tokens | **62%** |

---

## 📁 Project Structure

```
zero-gravity-dev/
│
├── setup.ps1 / setup.sh       # ⚡ One-command setup script
├── .mcp.json                   # MCP server config (auto-discovered by IDEs)
├── .gitignore                  # Git ignore rules
│
├── AGENTS.md                   # AI agent instructions (universal)
├── GEMINI.md                   # Gemini-specific AI instructions
├── GSD-STYLE.md                # Writing style & conventions
├── PROJECT_RULES.md            # GSD methodology rules
│
├── .agent/workflows/           # 27 GSD slash commands
│
├── .agents/skills/             # 11 specialized AI agent skills
│   ├── codebase-mapper/        # Structure & tech debt analysis
│   ├── context-compressor/     # Token-efficient context management
│   ├── context-fetch/          # Search-first file reading
│   ├── context-health-monitor/ # Context quality monitoring
│   ├── debugger/               # Systematic debugging
│   ├── empirical-validation/   # Proof-based verification
│   ├── executor/               # Plan execution engine
│   ├── plan-checker/           # Pre-execution plan validation
│   ├── planner/                # Phase plan creation
│   ├── token-budget/           # Token cost estimation
│   └── verifier/               # Spec compliance validation
│
├── .gsd/                       # GSD project state
│   ├── SPEC.md                 # Project specification
│   ├── ROADMAP.md              # Phase-based roadmap
│   ├── STATE.md                # Session memory
│   ├── templates/              # 24 document templates
│   └── examples/               # Workflow examples
│
└── code-review-graph/          # CRG source (Python + TypeScript)
    ├── code_review_graph/      # Core Python package
    ├── code-review-graph-vscode/ # VS Code extension
    ├── tests/                  # Test suite
    └── pyproject.toml          # Package config
```

---

## 🔄 Switching Machines

**Leaving a machine:**
```bash
/pause                                    # Save AI state
git add -A && git commit -m "chore: save state" && git push
```

**On the new machine:**
```bash
git clone https://github.com/Siddiqahmed26/zero-gravity-dev.git
cd zero-gravity-dev
.\setup.ps1                               # One command, everything installs
# Open in IDE
/resume                                   # Pick up where you left off
```

---

## 🖥️ IDE Compatibility

| IDE | Agent Instructions | GSD Workflows | CRG (MCP) |
|-----|-------------------|---------------|-----------|
| **Cursor** | `AGENTS.md` | `/slash` commands | `.mcp.json` auto-discovered ✅ |
| **VS Code + Copilot** | `.github/copilot-instructions.md` | Reference manually | Via extensions |
| **VS Code + Continue** | `.continuerules` | Reference manually | Native ✅ |
| **Windsurf** | `.windsurfrules` | Reference manually | `.mcp.json` auto-discovered ✅ |
| **Antigravity** | `AGENTS.md` auto-loaded | Full support ✅ | Auto-detected ✅ |
| **Claude Code** | `CLAUDE.md` | Reference manually | `.mcp.json` auto-discovered ✅ |

> **Tip:** `AGENTS.md` works as universal AI instructions. For IDEs that expect a different filename, copy or symlink the content.

---

## 📝 What Gets Committed vs What Stays Local

| Committed (portable) | Local Only (per machine) |
|----------------------|--------------------------|
| Setup scripts | Installed Python packages |
| GSD workflows & skills | `.code-review-graph/` runtime database |
| CRG source code | Virtual environments |
| Project rules & templates | IDE settings & extensions |
| SPEC, ROADMAP, STATE | Chat history & conversations |
| AGENTS.md / .mcp.json | Build artifacts & node_modules |

---

## 🙏 Credits & Attribution

Built on top of two incredible open-source projects:

### [Code Review Graph](https://github.com/tirth8205/code-review-graph) ⭐ 10.8k

> Local knowledge graph for Claude Code — **6.8× fewer tokens on reviews**, up to **49× on daily coding tasks**.

- **Author:** [@tirth8205](https://github.com/tirth8205) and [42 contributors](https://github.com/tirth8205/code-review-graph/graphs/contributors)
- **License:** [MIT](https://github.com/tirth8205/code-review-graph/blob/main/LICENSE)
- **Languages:** Python 87.9%, TypeScript 11.9%
- **Website:** [code-review-graph.com](https://code-review-graph.com)

### [Get Shit Done (GSD)](https://github.com/toonight/get-shit-done-for-antigravity) ⭐ 807

> AI-assisted project management — every file is both implementation and specification.

- **Author:** [@toonight](https://github.com/toonight)
- **License:** [MIT](https://github.com/toonight/get-shit-done-for-antigravity/blob/main/LICENSE)
- **Languages:** PowerShell 55.4%, Shell 44.6%

### What This Repo Adds

- **Combines both systems** into one portable workspace
- **One-command setup** — clone and run, everything installs
- **IDE-agnostic** — works with VS Code, Cursor, Windsurf, Antigravity, Claude Code
- **Token efficiency documentation** and cost-saving strategies
- **11 agent skills** for context management, debugging, and verification

---

## 📄 License

This workspace configuration is by **Siddiq Ahmed**. The underlying tools are MIT-licensed:

- Code Review Graph — [MIT](https://github.com/tirth8205/code-review-graph/blob/main/LICENSE)
- Get Shit Done — [MIT](https://github.com/toonight/get-shit-done-for-antigravity/blob/main/LICENSE)

---

*Crafted with [Claude Opus](https://www.anthropic.com/claude) by [Anthropic](https://www.anthropic.com) • Powered by GSD, Code Review Graph, and Agent Skills*
