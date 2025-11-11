# My Windows Dotfiles

This repository contains my personal configuration files (dotfiles) for various applications on Windows.

## 🚀 Configured Applications

These dotfiles customize the following tools:

- **Windows PowerShell**: Custom profile with aliases, functions, and settings.
- **Windows Terminal**: Custom theme, keybindings, and settings.
- **Visual Studio Code**: User settings, and keybindings.
- **Fastfetch**: Custom configuration for my system information display.

## ⚙️ Usage

These are my personal configuration files. To use them, you would typically copy the desired configuration file to its corresponding location on your system.

- **PowerShell Profile**:
  - Source: `WindowsPowerShell/Microsoft.PowerShell_profile.ps1`
  - Destination: `C:\Users\<Your-Username>\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1` (or run `echo $PROFILE` in PowerShell to find the exact path).

- **Windows Terminal Settings**:
  - Source: `terminal/settings.json`
  - Destination: `%LOCALAPPDATA%\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json`

- **VS Code Settings**:
  - Source: `vscode/settings.json`
  - Destination: `%APPDATA%\Code\User\settings.json`

- **Fastfetch Config**:
  - Source: `fastfetch/config.jsonc`
  - Destination: `%APPDATA%/fastfetch/config.jsonc`

> **Note:** Please review the configuration files before using them, as they are tailored to my specific workflow and system. You may need to adjust paths or settings to fit your own needs.
