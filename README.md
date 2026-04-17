<div align="center">

# 🚀 Zero Gravity Dev
**One command. Any machine. Full AI-powered dev workflow.**

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![Python 3.10+](https://img.shields.io/badge/python-3.10+-blue.svg)](https://www.python.org/downloads/release/python-3100/)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](http://makeapullrequest.com)

*By Siddiq Ahmed*

</div>

<br/>

> **Clone → Setup → Build.** 
> All your AI tools, agent skills, and project management combined into one ultra-fast, portable workspace. Never configure an AI IDE from scratch again.

<br/>

## 🌟 What Is This?

Zero Gravity Dev is a **portable AI development workspace** that fuses three powerful systems into one seamless stack:

| 🧩 System | 💡 What It Does |
|-----------|-----------------|
| **[Code Review Graph](https://github.com/tirth8205/code-review-graph)** | Builds a persistent knowledge graph of your code. Your AI reads only what matters — **6.8× fewer tokens** on reviews, up to **49× on daily coding** |
| **[GSD (Get Shit Done)](https://github.com/toonight/get-shit-done-for-antigravity)** | Structured project management — specs, roadmaps, phased execution, verification. No vague "implement auth" tasks |
| **Agent Skills** | 11 specialized AI behaviors — context compression, token budgeting, systematic debugging, and more |

<br/>

## 🛠️ Step-by-Step Installation

Getting started takes less than 30 seconds.

### 1️⃣ Clone the Repository
```bash
git clone https://github.com/Siddiqahmed26/zero-gravity-dev.git
cd zero-gravity-dev
```

### 2️⃣ Run the Magic Setup
We've built a one-click installation script that configures your python environment, installs the global CLI, and builds the initial knowledge graph.
```bash
# Windows
.\setup.ps1          

# macOS / Linux
./setup.sh           
```

### 3️⃣ Open in your IDE
Open the folder in **VS Code, Cursor, Windsurf, Antigravity**, or any AI-powered IDE. All your tools are instantly ready.

<br/>

## 🏗️ Starting a New Project

Once installed, there are two ways to start a brand new project anywhere on your computer:

### Option A: The Fast 1-Second Setup (Recommended)
When you ran the setup script, we installed a global terminal command called `zg-init` onto your computer.

1. Open **any new, empty folder** on your computer.
2. Open your terminal in that folder and type:
```bash
zg-init
```
3. Press Enter. *Boom.* All AI workflows, Agent instructions, and configuration files are instantly copied into your new project.

### Option B: The GSD Guided Setup
Inside your initialized workspace, tell your AI:
```text
/new-project
```
The AI will guide you through defining your specs, creating a roadmap, and building your app phase-by-phase.

<br/>

## 💰 How This Saves Tokens (and Money)

AI models charge per token. This stack is aggressively designed to **minimize waste** at every level.

### 📉 Code Review Graph: Search vs Read
| Scenario | Without CRG | With CRG | Savings |
|-------------|----------|---------|---------|
| Read `auth.ts` (500 lines) | ~2,000 tokens | `query_graph callers_of login` = ~100 tokens | **✨ 95%** |
| Impact of changing `auth.ts` | ~10,000 tokens | `get_impact_radius` = ~300 tokens | **✨ 97%** |
| Find test coverage | ~5,000 tokens | `query_graph tests_for login` = ~100 tokens | **✨ 98%** |

### 🧠 Agent Skills: Context Discipline
- **context-fetch:** Greps before reading. Never loads a full file when a snippet will do.
- **context-compressor:** Summarizes files. References summaries, not full re-reads.
- **token-budget:** Estimates cost before execution. Warns if plans will overflow.

<br/>

## 🎮 Key Commands Cheatsheet

Type these `/slash` commands to your AI to trigger powerful automated workflows:

| Command | Action |
|---------|--------|
| `/new-project` | Full guided project setup with spec creation |
| `/plan` | Decompose requirements into executable phases |
| `/execute` | Execute a specific phase with focused context |
| `/verify` | Validate work with empirical evidence (no "trust me, it works") |
| `/debug` | Systematic debugging with persistent state |
| `/help` | Show all 27 available commands |

<br/>

## 🖥️ IDE Compatibility

| IDE | Configuration Used |
|-----|-------------------|
| **Cursor** | `AGENTS.md` + `.mcp.json` auto-discovered ✅ |
| **Windsurf** | `.windsurfrules` + `.mcp.json` auto-discovered ✅ |
| **Antigravity** | `AGENTS.md` auto-loaded + Auto-detected MCP ✅ |
| **Claude Code** | `CLAUDE.md` + `.mcp.json` auto-discovered ✅ |

<br/>

## 🙏 Credits & Attribution

Built on top of two incredible open-source projects:

### [Code Review Graph](https://github.com/tirth8205/code-review-graph) ⭐ 10.8k
> Local knowledge graph for Claude Code — **6.8× fewer tokens on reviews**.
- **Author:** [@tirth8205](https://github.com/tirth8205)
- **License:** [MIT](https://github.com/tirth8205/code-review-graph/blob/main/LICENSE)

### [Get Shit Done (GSD)](https://github.com/toonight/get-shit-done-for-antigravity) ⭐ 807
> AI-assisted project management — every file is both implementation and specification.
- **Author:** [@toonight](https://github.com/toonight)
- **License:** [MIT](https://github.com/toonight/get-shit-done-for-antigravity/blob/main/LICENSE)

---
<div align="center">
  <sub>Built with ❤️ for the AI Development Community.</sub>
</div>
