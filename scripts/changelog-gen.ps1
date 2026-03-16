<#
.SYNOPSIS
    Parses git commits and appends them to CHANGELOG.md.
.DESCRIPTION
    A lightweight utility to parse recent git commits and categorize them
    into the Unreleased section of the CHANGELOG.md based on conventional commit prefixes.
#>

$changelogPath = "CHANGELOG.md"

if (-not (Test-Path $changelogPath)) {
    Write-Host "CHANGELOG.md not found in the current directory." -ForegroundColor Red
    exit 1
}

Write-Host "Scanning recent git commits..." -ForegroundColor Cyan
$commits = git log -n 10 --oneline --no-merges
$added = @()
$fixed = @()
$changed = @()

foreach ($commit in $commits) {
    if ($commit -match "^[0-9a-f]+ (feat|add): (.*)") {
        $added += "- $($matches[2])"
    } elseif ($commit -match "^[0-9a-f]+ (fix|bug): (.*)") {
        $fixed += "- $($matches[2])"
    } elseif ($commit -match "^[0-9a-f]+ (refactor|chore|update): (.*)") {
        $changed += "- $($matches[2])"
    }
}

if ($added.Count -eq 0 -and $fixed.Count -eq 0 -and $changed.Count -eq 0) {
    Write-Host "No new conventional commits found to add to Changelog."
    exit 0
}

Write-Host "Found new entries. Update CHANGELOG.md manually to place these in the correct section:" -ForegroundColor Yellow
if ($added.Count -gt 0) {
    Write-Host "`n### Added"
    $added | ForEach-Object { Write-Host $_ }
}
if ($changed.Count -gt 0) {
    Write-Host "`n### Changed"
    $changed | ForEach-Object { Write-Host $_ }
}
if ($fixed.Count -gt 0) {
    Write-Host "`n### Fixed"
    $fixed | ForEach-Object { Write-Host $_ }
}
