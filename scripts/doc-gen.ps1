<#
.SYNOPSIS
    Generates basic documentation stubs.
.DESCRIPTION
    Scans specified files and outputs a markdown summary of functions/methods found.
#>

param (
    [Parameter(Mandatory=$true)]
    [string]$FilePath
)

if (-not (Test-Path $FilePath)) {
    Write-Host "File $FilePath not found!" -ForegroundColor Red
    exit 1
}

$content = Get-Content $FilePath
$fileName = Split-Path $FilePath -Leaf

Write-Host "# Documentation for $fileName"
Write-Host ""
Write-Host "## Functions"

foreach ($line in $content) {
    # Match Python/JS/TS/PS function definitions very loosely for demonstration
    if ($line -match "^def\s+([a-zA-Z0-9_]+)\((.*)\):") {
        Write-Host "### \`$($matches[1])\`"
        Write-Host "**Parameters:** \`$($matches[2])\`"
        Write-Host ""
    } elseif ($line -match "^(function\s+)?([a-zA-Z0-9_]+)\s*\((.*)\)\s*{") {
         Write-Host "### \`$($matches[2])\`"
         Write-Host "**Parameters:** \`$($matches[3])\`"
         Write-Host ""
    }
}
