<div align="center">

<br/>

# ⚡ Zero Gravity Dev

### The Ultimate AI-Powered Development Workspace

<br/>

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg?style=for-the-badge)](https://opensource.org/licenses/MIT)
[![Python 3.10+](https://img.shields.io/badge/Python-3.10+-3776AB.svg?style=for-the-badge&logo=python&logoColor=white)](https://www.python.org/)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=for-the-badge)](http://makeapullrequest.com)
[![Stars](https://img.shields.io/github/stars/Siddiqahmed26/zero-gravity-dev?style=for-the-badge&color=gold)](https://github.com/Siddiqahmed26/zero-gravity-dev)

<br/>

**Clone → Setup → Build.** Your AI tools, agent skills, and project management — all in one portable workspace.

Works with **Cursor** · **VS Code** · **Windsurf** · **Antigravity** · **Claude Code**

<br/>

---

</div>

<br/>

## 🤔 Why Does This Exist?

Every time you start a new project or switch machines, you lose hours:

- ❌ Re-configuring your AI assistant's behavior from scratch
- ❌ Re-installing MCP servers and tools
- ❌ Losing your project management structure
- ❌ Burning thousands of tokens on context the AI already understood yesterday
- ❌ No consistent workflow — every project feels different

**Zero Gravity Dev solves all of this.**

It's a single, portable workspace that carries your entire AI development environment with you. Clone it once, run one command, and every tool — every workflow — every optimization — is instantly active. On any machine. In any IDE.

<br/>

---

<br/>

## 🧬 The Three Pillars

Zero Gravity Dev combines three powerful open-source systems into one unified stack:

<br/>

<table>
<tr>
<td width="33%" align="center">

### 🔬 Code Review Graph

**Your AI's Memory**

Builds a persistent knowledge graph of your entire codebase using Tree-sitter parsing. Instead of re-reading files every time, your AI *queries* the graph.

**6.8× fewer tokens** on code reviews
**Up to 49× savings** on daily coding

[View Project →](https://github.com/tirth8205/code-review-graph)

</td>
<td width="33%" align="center">

### 📋 GSD Framework

**Structured Execution**

Get Shit Done — a methodology that turns vague ideas into executable, phased roadmaps. Every task has a spec, a plan, and proof of completion.

**27 slash commands**
**Zero guesswork**

[View Project →](https://github.com/toonight/get-shit-done-for-antigravity)

</td>
<td width="33%" align="center">

### 🧠 Agent Skills

**11 Specialized Behaviors**

Pre-configured AI behaviors that enforce context discipline, smart debugging, token budgeting, and empirical validation across every task.

**Automatic activation**
**No configuration needed**

</td>
</tr>
</table>

<br/>

---

<br/>

## 🚀 Getting Started

### Step 1 — Clone

```bash
git clone https://github.com/Siddiqahmed26/zero-gravity-dev.git
cd zero-gravity-dev
```

### Step 2 — Run Setup

<table>
<tr>
<td>

**🪟 Windows (PowerShell)**
```powershell
.\setup.ps1
```

</td>
<td>

**🍎 macOS / 🐧 Linux**
```bash
chmod +x setup.sh && ./setup.sh
```

</td>
</tr>
</table>

The setup script will:
1. ✅ Verify Python 3.10+ and Git are installed
2. ✅ Install the Code Review Graph CLI globally
3. ✅ Build the initial knowledge graph
4. ✅ Register the `zg-init` terminal command on your system

### Step 3 — Open & Build

Open the folder in your AI-powered IDE. **Everything is ready.** Tell your AI:

```
/new-project
```

<br/>

---

<br/>

## ⚡ The `zg-init` Command — Start Any Project in 1 Second

After running setup once, you get a **permanent terminal command** called `zg-init`.

Here's the workflow for every new project you'll ever create:

```
┌─────────────────────────────────────────────────┐
│                                                 │
│   1. Create a new folder anywhere               │
│   2. Open terminal in that folder               │
│   3. Type:  zg-init                             │
│   4. Done. Full AI workspace is active.         │
│                                                 │
└─────────────────────────────────────────────────┘
```

That's it. All your `.gsd` workflows, `AGENTS.md` instructions, agent skills, and MCP configuration are instantly copied. No cloning. No installing. **One second.**

<br/>

---

<br/>

## 🧠 The 11 Agent Skills — Deep Dive

These aren't plugins you install — they're **behavioral instructions** baked into `AGENTS.md` that shape how your AI thinks, plans, and executes. They activate automatically.

<br/>

<table>
<tr>
<td width="50%">

### 🗺️ Codebase Mapper
Analyzes your project's structure, identifies patterns, and surfaces technical debt — so your AI understands the architecture before writing a single line.

### 🗜️ Context Compressor
After reading a file, the AI summarizes it and references the summary instead of re-reading the full file. Drastically reduces token burn on long sessions.

### 🔍 Context Fetch
**Search before read.** The AI greps for relevant snippets before loading entire files. A 500-line file becomes a 10-line snippet.

### 📊 Context Health Monitor
Tracks how much context the AI is carrying. Triggers automatic state dumps before quality degrades from context overflow.

### 🐛 Debugger
Systematic debugging with persistent state. Tracks hypotheses, evidence, and eliminated causes across multiple attempts.

### ✅ Empirical Validation
No "trust me, it works." Every claim must be backed by proof — test output, screenshots, or measurable results.

</td>
<td width="50%">

### ⚙️ Executor
The execution engine. Follows GSD plans with atomic commits, handles deviations, runs checkpoints, and manages state transitions.

### 🔎 Plan Checker
Validates plans *before* execution. Catches missing dependencies, impossible orderings, and scope issues early.

### 📐 Planner
Creates executable phase plans with task breakdowns, dependency graphs, and goal-backward verification to ensure nothing is missed.

### 💲 Token Budget
Estimates the token cost of a plan before executing it. Warns you if a task will overflow your context window or burn excessive tokens.

### 🏁 Verifier
Validates completed work against the original spec. Ensures every requirement is met with evidence, not assumptions.

</td>
</tr>
</table>

<br/>

---

<br/>

## 💰 Token Savings — Real Numbers

AI models charge per token. This stack is designed to **eliminate waste** at every level.

<br/>

| Scenario | Without Zero Gravity | With Zero Gravity | Savings |
|:---------|:---------------------|:------------------|:--------|
| Code review (10 files) | ~50,000 tokens | ~5,000 tokens | **🟢 90%** |
| Read `auth.ts` (500 lines) | ~2,000 tokens | ~100 tokens | **🟢 95%** |
| Find all callers of a function | ~10,000 tokens | ~300 tokens | **🟢 97%** |
| Find test coverage | ~5,000 tokens | ~100 tokens | **🟢 98%** |
| Debug session | ~30,000 tokens | ~8,000 tokens | **🟢 73%** |
| Resume after a break | ~20,000 tokens | ~2,000 tokens | **🟢 90%** |

<br/>

---

<br/>

## 🎮 Command Reference

Type these to your AI inside any initialized workspace:

<br/>

| Category | Command | What It Does |
|:---------|:--------|:-------------|
| **🏗️ Setup** | `/new-project` | Full guided project setup with spec & roadmap |
| **📐 Planning** | `/plan` | Decompose requirements into executable phases |
| | `/research-phase` | Deep-dive research before committing to a plan |
| **⚙️ Execution** | `/execute` | Execute a specific phase with focused context |
| | `/sprint` | Rapid execution mode for small tasks |
| **✅ Verification** | `/verify` | Validate work with empirical evidence |
| | `/audit-milestone` | Audit a milestone for completeness |
| **🐛 Debugging** | `/debug` | Systematic debugging with persistent state |
| **📊 Status** | `/progress` | Show current position in roadmap |
| | `/map` | Visualize codebase structure |
| **💾 Session** | `/pause` | Save full AI state for later |
| | `/resume` | Restore context from previous session |
| **❓ Help** | `/help` | Show all 27 available commands |

<br/>

---

<br/>

## 🔄 Switch Machines in 30 Seconds

**Leaving your current machine:**
```bash
/pause                                              # Save AI state
git add -A && git commit -m "save state" && git push
```

**On the new machine:**
```bash
git clone https://github.com/Siddiqahmed26/zero-gravity-dev.git
cd zero-gravity-dev
.\setup.ps1                                         # One command setup
/resume                                             # Pick up exactly where you left off
```

<br/>

---

<br/>

## 📁 Project Structure

```
zero-gravity-dev/
│
├── setup.ps1 / setup.sh          # ⚡ One-command setup (Windows / macOS / Linux)
├── .mcp.json                      # MCP server config (auto-discovered by IDEs)
├── AGENTS.md                      # Universal AI agent instructions
├── GEMINI.md                      # Gemini-specific AI instructions
├── GSD-STYLE.md                   # Writing style & conventions
├── PROJECT_RULES.md               # GSD methodology rules
│
├── .agent/workflows/              # 📋 27 GSD slash commands
│
├── .agents/skills/                # 🧠 11 specialized AI agent skills
│   ├── codebase-mapper/           #    Structure & tech debt analysis
│   ├── context-compressor/        #    Token-efficient context management
│   ├── context-fetch/             #    Search-first file reading
│   ├── context-health-monitor/    #    Context quality monitoring
│   ├── debugger/                  #    Systematic debugging
│   ├── empirical-validation/      #    Proof-based verification
│   ├── executor/                  #    Plan execution engine
│   ├── plan-checker/              #    Pre-execution plan validation
│   ├── planner/                   #    Phase plan creation
│   ├── token-budget/              #    Token cost estimation
│   └── verifier/                  #    Spec compliance validation
│
├── .gsd/                          # 📋 GSD project state
│   ├── SPEC.md                    #    Project specification
│   ├── ROADMAP.md                 #    Phase-based roadmap
│   └── STATE.md                   #    Session memory
│
└── code-review-graph/             # 🔬 CRG source (Python)
```

<br/>

---

<br/>

## 🖥️ IDE Compatibility

| IDE | Agent Instructions | GSD Workflows | CRG (MCP) |
|:----|:-------------------|:--------------|:-----------|
| **Cursor** | `AGENTS.md` | `/slash` commands | `.mcp.json` auto-discovered ✅ |
| **Windsurf** | `.windsurfrules` | Reference manually | `.mcp.json` auto-discovered ✅ |
| **Antigravity** | `AGENTS.md` auto-loaded | Full support ✅ | Auto-detected ✅ |
| **Claude Code** | `CLAUDE.md` | Reference manually | `.mcp.json` auto-discovered ✅ |
| **VS Code + Copilot** | `.github/copilot-instructions.md` | Reference manually | Via extensions |

> **Tip:** `AGENTS.md` works as universal AI instructions. For IDEs that expect a different filename, copy or symlink the content.

<br/>

---

<br/>

## 🙏 Credits & Attribution

Built on top of two incredible open-source projects:

<table>
<tr>
<td width="50%">

### [Code Review Graph](https://github.com/tirth8205/code-review-graph) ⭐ 10.8k

> Local knowledge graph — **6.8× fewer tokens on reviews**, up to **49× on daily coding**.

- **Author:** [@tirth8205](https://github.com/tirth8205) and [42 contributors](https://github.com/tirth8205/code-review-graph/graphs/contributors)
- **License:** [MIT](https://github.com/tirth8205/code-review-graph/blob/main/LICENSE)
- **Website:** [code-review-graph.com](https://code-review-graph.com)

</td>
<td width="50%">

### [Get Shit Done (GSD)](https://github.com/toonight/get-shit-done-for-antigravity) ⭐ 807

> AI-assisted project management — every file is both implementation and specification.

- **Author:** [@toonight](https://github.com/toonight)
- **License:** [MIT](https://github.com/toonight/get-shit-done-for-antigravity/blob/main/LICENSE)

</td>
</tr>
</table>

<br/>

---

<div align="center">

<br/>

**Built with ❤️ by [Siddiq Ahmed](https://github.com/Siddiqahmed26) for the AI Development Community**

*Stop configuring. Start building.*

<br/>

</div>
