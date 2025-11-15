oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\star.omp.json" | Invoke-Expression

Invoke-Expression (& { (zoxide init powershell | Out-String) })

# Minimal profile: UTF‑8 + Oh My Posh (if installed) + Fastfetch with explicit config path
try {
    [Console]::InputEncoding  = [System.Text.Encoding]::UTF8
    [Console]::OutputEncoding = [System.Text.Encoding]::UTF8
    $OutputEncoding = [System.Text.UTF8Encoding]::new($false)
    chcp 65001 > $null
} catch {}

Clear-Host

# Force Fastfetch to use YOUR config every time (bypass path confusion)
if (Get-Command fastfetch -ErrorAction SilentlyContinue) {
    fastfetch -c "C:/Users/ASUS/.config/fastfetch/config.jsonc"
}

# --- PSReadLine Configuration ---
Import-Module PSReadLine
Set-PSReadLineOption -EditMode Windows
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -PredictionViewStyle InlineView

# --- ALIAS ---

# 1. Git Add 
function ga {
    if ($args) { git add $args } 
    else { Write-Host "Adding all files..." -ForegroundColor Cyan; git add . }
}

# 2. Git Commit & Push
function gc { git commit -m $args }
function gps { git push }
function gpl { git pull }
function gs { git status }

# 3. Branch
function gb  { git branch }             # Lihat list branch
function gco { git checkout $args }     # Pindah branch
function gcb { git checkout -b $args }  # Buat & Pindah ke branch baru
function gbd { git branch -d $args }    # Hapus branch
function ll  { Get-ChildItem -Force }   # Lihat file termasuk hidden
