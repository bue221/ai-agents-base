# ==============================================================================
#  AI-Agents-Base Universal Installer (Windows PowerShell)
#  "Un solo cerebro, todos los CLIs."
# ==============================================================================

Write-Host "🚀 Arrancando instalación de ai-agents-base, parce..." -ForegroundColor Blue

$RepoDir = Split-Path -Parent $PSScriptRoot
$AgentsFile = Join-Path $RepoDir "agents.md"
$SkillsDir = Join-Path $RepoDir "skills"
$SubagentsDir = Join-Path $RepoDir "subagents"

function New-AgentLink {
    param (
        [string]$TargetFile,
        [string]$LinkName,
        [string]$AgentName
    )

    Write-Host "🛠️ Configurando $AgentName..." -ForegroundColor Yellow

    # Crear directorio si no existe
    $ParentDir = Split-Path -Parent $LinkName
    if (-not (Test-Path $ParentDir)) {
        New-Item -ItemType Directory -Path $ParentDir -Force | Out-Null
    }

    # Backup si el archivo ya existe y no es un link mka
    if (Test-Path $LinkName) {
        $Item = Get-Item $LinkName
        if ($Item.LinkType -eq $null) {
            Write-Host "  ⚠️  Archivo real detectado en $LinkName. Haciendo backup a .bak..." -ForegroundColor Yellow
            Rename-Item $LinkName "$LinkName.bak" -Force
        } else {
            Write-Host "  ♻️  Link anterior detectado. Lo vamos a reemplazar, parce." -ForegroundColor Cyan
            Remove-Item $LinkName -Force
        }
    }

    # ¡Pum! Creamos el link simbólico mka (requiere permisos de admin o modo desarrollador)
    New-Item -ItemType SymbolicLink -Path $LinkName -Target $TargetFile -Force | Out-Null
    Write-Host "  ✅ $AgentName configurado con éxito." -ForegroundColor Green
}

function New-AgentDirLink {
    param (
        [string]$TargetDir,
        [string]$LinkDir,
        [string]$Label
    )

    # Crear directorio padre
    $ParentDir = Split-Path -Parent $LinkDir
    if (-not (Test-Path $ParentDir)) {
        New-Item -ItemType Directory -Path $ParentDir -Force | Out-Null
    }

    # Backup si existe y no es link
    if (Test-Path $LinkDir) {
        $Item = Get-Item $LinkDir
        if ($Item.LinkType -eq $null) {
            Write-Host "  ⚠️  Directorio real detectado en $LinkDir. Backup a .bak..." -ForegroundColor Yellow
            Rename-Item $LinkDir "$LinkDir.bak" -Force
        } else {
            Remove-Item $LinkDir -Force
        }
    }

    New-Item -ItemType SymbolicLink -Path $LinkDir -Target $TargetDir -Force | Out-Null
    Write-Host "  ✅ $Label configurado." -ForegroundColor Green
}

# Rutas de Windows (normalmente en el Home del usuario)
$HomeDir = $env:USERPROFILE

# 1. Gemini CLI
$GeminiPath = Join-Path $HomeDir ".gemini\GEMINI.md"
New-AgentLink $AgentsFile $GeminiPath "Gemini CLI"
New-AgentDirLink $SkillsDir (Join-Path $HomeDir ".gemini\skills") "Gemini CLI Skills"
New-AgentDirLink $SubagentsDir (Join-Path $HomeDir ".gemini\agents") "Gemini CLI Subagents"

# 2. Claude Code
$ClaudePath = Join-Path $HomeDir ".claude\CLAUDE.md"
New-AgentLink $AgentsFile $ClaudePath "Claude Code"
New-AgentDirLink $SkillsDir (Join-Path $HomeDir ".claude\skills") "Claude Code Skills"
New-AgentDirLink $SubagentsDir (Join-Path $HomeDir ".claude\agents") "Claude Code Subagents"

# 3. OpenCode
$OpenCodePath = Join-Path $HomeDir ".opencode\AGENTS.md"
New-AgentLink $AgentsFile $OpenCodePath "OpenCode"
New-AgentDirLink $SkillsDir (Join-Path $HomeDir ".opencode\skills") "OpenCode Skills"
New-AgentDirLink $SubagentsDir (Join-Path $HomeDir ".opencode\agents") "OpenCode Subagents"

Write-Host "`n✨ ¡Todo melo, parce! Sus CLIs ahora usan el mismo cerebro." -ForegroundColor Green
Write-Host "Pille: Cualquier cambio en $AgentsFile se reflejará en todo lado." -ForegroundColor Blue
