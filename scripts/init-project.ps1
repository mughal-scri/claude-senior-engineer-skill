<#
.SYNOPSIS
    Initializes a new project with the Senior Developer Skill structure.
.DESCRIPTION
    Creates standard templates (CHANGELOG.md, PROJECT_TRACKER.md), initializes a git repository,
    and sets up basic boilerplate.
.EXAMPLE
    .\init-project.ps1 -ProjectName "MyNewApp"
#>

param (
    [Parameter(Mandatory=$true)]
    [string]$ProjectName
)

$targetDir = Join-Path -Path (Get-Location) -ChildPath $ProjectName

if (Test-Path $targetDir) {
    Write-Host "Directory $ProjectName already exists!" -ForegroundColor Red
    exit 1
}

New-Item -ItemType Directory -Path $targetDir | Out-Null
Set-Location $targetDir

Write-Host "Initializing Project: $ProjectName..." -ForegroundColor Cyan

# 1. Initialize Git
git init | Out-Null
New-Item -ItemType File -Path ".gitignore" -Value "node_modules/`r`n.env`r`nbin/`r`nobj/`r`n*.suo`r`n*.user`r`n.vs/`r`n" | Out-Null
Write-Host " > Git repository initialized."

# 2. Create Project Tracker
$trackerContent = @"
# Project Tracker: $ProjectName

## Milestones
- [ ] Phase 1: Planning and Setup
- [ ] Phase 2: Core Implementation
- [ ] Phase 3: Testing and Deployment

## Risk Register
| Risk | Probability | Impact | Mitigation Strategy |
|---|---|---|---|
| Scope Creep | Medium | High | Strict adherence to MVP |

## Tech Debt
- None currently.
"@
New-Item -ItemType File -Path "PROJECT_TRACKER.md" -Value $trackerContent | Out-Null
Write-Host " > Created PROJECT_TRACKER.md"

# 3. Create Changelog
$changelogContent = @"
# Changelog

All notable changes to this project will be documented in this file.
The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/).

## [Unreleased]
### Added
- Initial project structure.
"@
New-Item -ItemType File -Path "CHANGELOG.md" -Value $changelogContent | Out-Null
Write-Host " > Created CHANGELOG.md"

# 4. Create README
$readmeContent = @"
# $ProjectName

Project initialized with the Senior Developer Skill framework.

## Getting Started
(TODO: Add build/run instructions)
"@
New-Item -ItemType File -Path "README.md" -Value $readmeContent | Out-Null
Write-Host " > Created README.md"

Write-Host "Project $ProjectName initialized successfully!" -ForegroundColor Green
