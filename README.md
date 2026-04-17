<div align="center">

# 🌌 ZERO GRAVITY DEV

**The Ultimate AI-Powered Development Environment.**

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg?style=for-the-badge&color=2ea44f)](https://opensource.org/licenses/MIT)
[![Python](https://img.shields.io/badge/Python-3.10+-3776AB.svg?style=for-the-badge&logo=python&logoColor=white)](https://www.python.org/)
[![Status](https://img.shields.io/badge/Status-Production_Ready-brightgreen.svg?style=for-the-badge)](https://github.com/Siddiqahmed26/zero-gravity-dev)

> *Clone → Setup → Build.* Your AI tools, agent skills, and project management — unified into one ultra-fast, portable workspace. Never configure an AI IDE from scratch again.

<br/>

**[ Cursor ]** &nbsp; · &nbsp; **[ Windsurf ]** &nbsp; · &nbsp; **[ Antigravity ]** &nbsp; · &nbsp; **[ VS Code ]**

<br/>

</div>

---

## 🚀 The Zero Gravity Architecture

Every time you start a new project or switch machines, you lose hours configuring AI behavior, MCP servers, and project tracking. **Zero Gravity Dev solves this by unifying three state-of-the-art open-source systems:**

```mermaid
flowchart TD
    User([💻 Developer]) -->|Runs zg-init| ZG[🌌 Zero Gravity Workspace]
    
    ZG --> CRG[(🔬 Code Review Graph)]
    ZG --> Skills[🧠 11 Agent Skills]
    ZG --> GSD[📋 GSD Workflows]
    
    CRG -.->|AST Context| Skills
    Skills -.->|Token Discipline| GSD
    GSD -.->|Structured Code| Shipped([✅ Shipped Feature])
```

### 1. 🔬 Code Review Graph (Your AI's Memory)
Builds a persistent AST knowledge graph of your entire codebase. Instead of burning context windows re-reading files, your AI *queries* the graph. Result: **6.8× fewer tokens** on reviews, up to **49× savings** on daily coding.

### 2. 📋 GSD Framework (Structured Execution)
Get Shit Done — a methodology that turns vague ideas into executable roadmaps. Every task has a spec, a plan, and proof of completion via **27 slash commands**.

### 3. 🧠 Agent Skills (Behavioral Overrides)
**11 pre-configured behaviors** that enforce context discipline, token budgeting, systematic debugging, and empirical validation. Active instantly, zero configuration.

---

## 📦 Prerequisites

Before installing, ensure you have the following installed on your machine. You can check by running these commands in your terminal:

- **Python 3.10+** (Required for the Code Review Graph engine)
  - *Check:* Run `python --version` in your terminal.
  - *Download:* [python.org/downloads](https://www.python.org/downloads/) (Make sure to check "Add Python to PATH" during installation)
- **Git** (Required for code cloning and graph change detection)
  - *Check:* Run `git --version` in your terminal.
  - *Download:* [git-scm.com/downloads](https://git-scm.com/downloads)

---

## ⚡ Step 1: One-Time Global Setup

Run this **exactly once** on your machine to install the global tools and register the `zg-init` command.

```bash
# Clone the master workspace anywhere on your PC
git clone https://github.com/Siddiqahmed26/zero-gravity-dev.git
cd zero-gravity-dev
```

*(Note: The Code Review Graph source code is already bundled inside this repository. You do not need to download it separately.)*

<details>
<summary><b>🪟 Windows Users</b> <i>(Click to expand)</i></summary>

```powershell
.\setup.ps1
```
</details>

<details>
<summary><b>🍎 macOS / 🐧 Linux Users</b> <i>(Click to expand)</i></summary>

```bash
chmod +x setup.sh && ./setup.sh
```
</details>

---

## 🌌 Step 2: Creating a New Project 

Once the global setup is complete, you **never need to clone this repository again.** 

Whenever you want to build a new app (React, Python, Node, etc.), just use the magic command to instantly inject the AI configuration into your project.

<div align="center">
  <br>
  <h3>✨ The Magic Command ✨</h3>
  <img src="https://img.shields.io/badge/terminal-%24_zg--init-000000?style=for-the-badge&logo=gnometerminal&logoColor=white" alt="zg-init command" />
  <br><br>
</div>

### 1️⃣ Create your app folder
Start by making a fresh directory for your new project.
```bash
mkdir my-new-app && cd my-new-app
```

### 2️⃣ Inject Zero Gravity
Run the magic command to instantly populate the AI workspace, agents, and GSD workflows into your folder. *(Takes < 1 second)*
```bash
zg-init
```

### 3️⃣ Add your favorite framework *(Optional)*
Initialize React, Vue, Django, Rust, or whatever stack you want right on top of it!
```bash
npx create-vite@latest ./
# or: django-admin startproject myapp .
# or: cargo init
```

> **🎉 You're Ready!** 
> Open this folder in your AI IDE (like Cursor, Windsurf, or Antigravity) and type `/new-project` in the chat to begin planning.

---

## 📈 Real-World Token Savings

Zero Gravity Dev is aggressively optimized to eliminate token waste and API costs.

| Scenario | Standard AI IDE | Zero Gravity | Net Reduction |
|:---------|:----------------|:-------------|:--------------|
| **Code review (10 files)** | ~50,000 tokens | ~5,000 tokens | <kbd>🟢 90%</kbd> |
| **Context: `auth.ts` (500 loc)** | ~2,000 tokens | ~100 tokens | <kbd>🟢 95%</kbd> |
| **Find all callers of function** | ~10,000 tokens | ~300 tokens | <kbd>🟢 97%</kbd> |
| **Systematic Debug Session** | ~30,000 tokens | ~8,000 tokens | <kbd>🟢 73%</kbd> |

---

## 🛠️ Advanced Tooling Reference

<details>
<summary><b>🧠 View All 11 Agent Skills</b></summary>

These instructions are baked into `AGENTS.md` and activate automatically to shape how your AI thinks and executes.

* **🗺️ Codebase Mapper:** Analyzes your project's structure before writing code.
* **🗜️ Context Compressor:** Summarizes files and references summaries instead of re-reading full files.
* **🔍 Context Fetch:** Search-before-read protocol. Greps for snippets before loading massive files.
* **📊 Context Health Monitor:** Triggers automatic state dumps before context degradation.
* **🐛 Debugger:** Systematic debugging tracking hypotheses and eliminated causes.
* **✅ Empirical Validation:** Requires test output/screenshots before marking tasks complete.
* **⚙️ Executor:** Follows GSD plans with atomic commits and checkpoint protocols.
* **🔎 Plan Checker:** Validates plans *before* execution to catch scope issues early.
* **📐 Planner:** Creates phase plans with dependency graphs and goal-backward verification.
* **💲 Token Budget:** Estimates token cost of plans before execution.
* **🏁 Verifier:** Validates completed work against the original specification.

</details>

<details>
<summary><b>💻 View All GSD Slash Commands</b></summary>

Type these to your AI inside any initialized workspace:

**🏗️ Setup & Planning**
* `/new-project` - Full guided project setup
* `/plan` - Decompose requirements into executable phases
* `/research-phase` - Deep-dive research before committing

**⚙️ Execution & Verification**
* `/execute` - Execute a phase with focused context
* `/sprint` - Rapid execution mode
* `/verify` - Validate work with empirical evidence
* `/audit-milestone` - Check a milestone for completeness

**🐛 Operations**
* `/debug` - Systematic debugging with persistent state
* `/progress` - Show current position in roadmap
* `/pause` - Save full AI state for later
* `/resume` - Restore context from previous session
* `/help` - Show all 27 available commands

</details>

---

## 🌐 Open Source Attribution

This master environment orchestrates two phenomenal open-source projects:

* **[Code Review Graph](https://github.com/tirth8205/code-review-graph):** Created by [@tirth8205](https://github.com/tirth8205) and 42 contributors. (MIT License).
* **[Get Shit Done (GSD)](https://github.com/toonight/get-shit-done-for-antigravity):** Created by [@toonight](https://github.com/toonight). (MIT License).

<br/>

<div align="center">

**Built with ❤️ for the Global Developer Community.** <br/>
*Stop configuring. Start building.*

</div>
