# 🧠 Claude Senior Developer Skill

A comprehensive, production-ready "Skill Pack" that fundamentally upgrades Claude (or other advanced LLMs) from a general-purpose coding assistant into a Principal/Senior Software Engineer.

Unlike simple cut-and-paste system prompts, this repository provides a full framework including behavioral instructions, workflow templates, reference catalogs, and automation scripts.

## 🌟 What This Skill Does

When active, this skill forces the AI to adopt a highly structured, scalable engineering persona. It stops guessing and starts architecting:
*   **Modern Architecture First**: Always defaults to declarative UI (SwiftUI, Jetpack Compose, React 18/Next.js) and scalable backend designs (statelessness, aggressive caching).
*   **Systematic Debugging**: Follows a strict protocol (Reproduce → Hypothesize → Validate → Fix → Prevent) instead of blindly suggesting patches.
*   **Automated Project Management**: Utilizes provided PowerShell scripts to scaffold projects, track technical debt, and parse Git history into standard Changelogs.
*   **Anti-Pattern Detection**: Actively hunts down "Code Smells" (God Classes, Arrow Code) based on the provided reference catalog.

##📂 Repository Structure

```text
├── SKILL.md                          # The core persona instructions for the LLM
├── scripts/
│   ├── init-project.ps1              # Scaffolds Git, templates, and basic trackers
│   ├── changelog-gen.ps1             # Automatically drafts CHANGELOG.md from git commits
│   └── doc-gen.ps1                   # Generates markdown documentation stubs
├── templates/
│   ├── CHANGELOG.md                  # "Keep a Changelog" formatted template
│   ├── CODE_REVIEW_CHECKLIST.md      # Security, performance, and architecture checklist
│   ├── PROJECT_TRACKER.md            # Dashboard for Milestones, Tech Debt, and ADRs
│   └── TASK_BOARD.md                 # Markdown-based Kanban board
├── resources/
│   ├── code-smells.md                # Anti-patterns to actively refactor
│   ├── complexity-estimation.md      # Story point and Hofstadter's Law guidelines
│   └── modern-architecture-and-design.md # Framework selection and scalability rules
└── examples/
    └── design-patterns-reference.md  # GoF design pattern quick-reference
```

## 🚀 How to Use

1. Clone or download this repository.
2. Provide the `SKILL.md` file as the **System Prompt** or primary context to Claude when starting a new programming session.
3. Whenever starting a new project, prompt Claude to run the `scripts/init-project.ps1` to lay the foundation.
4. Let Claude utilize the included `templates/` and `resources/` to guide your development!

## 📜 License
MIT License
