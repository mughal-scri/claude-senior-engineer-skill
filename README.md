# 🚀 Claude Senior Developer Skill

<div align="center">
  <h3>Transform Claude from a general AI assistant into a Staff/Principal Software Engineer with 30 years of experience.</h3>
</div>

<p align="center">
  <img src="https://img.shields.io/badge/Made%20for-Claude-7b61ff?style=for-the-badge&logo=anthropic&logoColor=white" alt="Made for Claude">
  <img src="https://img.shields.io/badge/License-MIT-blue.svg?style=for-the-badge" alt="License">
  <img src="https://img.shields.io/badge/PRs-Welcome-brightgreen.svg?style=for-the-badge" alt="PRs Welcome">
</p>

---

## 🌟 The Problem
Simple "system prompts" or custom instructions like *"you are an expert coder"* only scratch the surface. They don't give the AI a framework for **how** to think about architecture, technical debt, or systematic debugging.

## 💡 The Solution
This repository is a comprehensive, production-ready **"Skill Pack"**. It provides Claude with a rigorous engineering persona, workflow templates, reference catalogs, and automation scripts. When active, Claude stops guessing and starts architecting.

---

## ✨ Key Features

🧠 **Architectural Mindset**
Forces modern, scalable architectures by default. Prefers declarative UI (SwiftUI, Jetpack Compose, React/Next.js) and robust backend patterns (statelessness, caching).

🐛 **Systematic Debugging Protocol**
Eliminates the "blind patch" loop. Claude is instructed to follow: *Reproduce → Hypothesize → Validate → Fix → Prevent*.

📊 **Project Management & State**
Includes tools and templates to act as a tech lead—maintaining Git Changelogs, tracking Technical Debt, and outputting Architecture Decision Records (ADRs).

🕵️ **Anti-Pattern Detection**
Actively hunts down "Code Smells" (God Classes, Arrow Code, N+1 query problems) and suggests systemic refactoring rather than one-off hacks.

🤝 **Team Collaboration Protocol**
Reviews code in a structured 3-tier system (Critical, Architecture, Nitpicks) and communicates with empathetic yet direct engineering leadership.

---

## 📂 What's Included

```text
├── SKILL.md                          # The core Brain/Persona instructions
├── scripts/
│   ├── init-project.ps1              # Scaffolds templates, and basic trackers
│   ├── changelog-gen.ps1             # Drafts CHANGELOG.md from commits
│   └── doc-gen.ps1                   # Generates markdown doc stubs
├── templates/
│   ├── CHANGELOG.md                  # "Keep a Changelog" format
│   ├── CODE_REVIEW_CHECKLIST.md      # Security & Architecture checklist
│   ├── PROJECT_TRACKER.md            # Dashboard for Tech Debt & Milestones
│   └── TASK_BOARD.md                 # Markdown Kanban board
├── resources/
│   ├── code-smells.md                # Anti-pattern hunting guide
│   ├── complexity-estimation.md      # Story point sizing guidelines
│   └── modern-architecture.md        # Scalability rules
└── examples/
    └── design-patterns.md            # GoF design pattern quick-reference
```

---

## 🚀 How to Use

1. **Clone or Download** this repository to your local machine.
2. **Activate the Skill**: Provide the `SKILL.md` file as the primary context (or Custom Instruction/System Prompt) to Claude at the start of a new session.
3. **Initialize Projects**: When starting a fresh codebase, ask Claude to run `scripts/init-project.ps1` to lay down a robust tracking foundation.
4. **Build Like a Pro**: Let Claude utilize the included `templates/` and `resources/` to guide your development, code reviews, and architecture decisions!

---

## 🤝 Support the Project
If this skill helped you write better code, please consider giving the repository a ⭐ **Star**! It helps others discover the project.

## 📜 License
This project is licensed under the MIT License.
