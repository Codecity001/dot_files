# dot_files

A comprehensive repository hosting customizations and tools to enhance your Windows 11 operating system experience. This collection includes PowerShell configurations, system font customization tools, UI enhancement mods, and terminal customizations.

## 📋 Table of Contents

- [Overview](#overview)
- [Directory Structure](#directory-structure)
- [Components](#components)
  - [Fonts](#fonts)
  - [PowerShell](#powershell)
  - [Windhawk](#windhawk)
  - [Configuration Files](#configuration-files)
- [Getting Started](#getting-started)
- [License](#license)

## Overview

This repository provides a curated collection of Windows 11 customizations designed to improve productivity, aesthetics, and user experience. It includes:

- **Terminal Enhancements**: Custom PowerShell profile with integrated tools and themes
- **System Font Management**: Registry-based font switching utilities
- **UI Customizations**: Windhawk mods for taskbar, start menu, and file explorer styling
- **Terminal Information**: Fastfetch configuration for system information display

---

## Directory Structure

```
dot_files/
├── LICENSE                              # GNU GPL v3 License
├── README.md                            # This file
├── Fonts/                               # System font customization
├── PowerShell/                          # PowerShell configuration and modules
│   ├── Modules/                         # PowerShell modules
│   ├── Scripts/                         # PowerShell scripts
│   ├── Microsoft.PowerShell_profile.ps1 # Main PowerShell profile
│   └── powershell.config.json           # PowerShell configuration
├── Windhawk/                            # Windows UI customization mods
│   ├── backup/                          # Backup and source files
│   └── *.json/*.yaml                    # Windhawk mod configurations
└── .config/                             # Application configuration files
    ├── powershell/                      # PowerShell user profile and theme
    └── fastfetch/                       # Fastfetch configuration
```

---

### Configuration Files

Located in: `.config/`

#### PowerShell Configuration

- **.config/powershell/user_profile.ps1** - Custom user profile with:
  - Alias definitions
  - Function definitions
  - Module initialization
  - Custom keybindings

- **.config/powershell/my_theme.omp.json** - Oh-My-Posh theme defining:
  - Prompt segments (git status, directory, time, etc.)
  - Colors and styling
  - Symbol definitions

#### Fastfetch Configuration

- **.config/fastfetch/config.jsonc** - Main configuration file for system information display
- **.config/fastfetch/ascii.txt** - Custom ASCII art for system information output

Fastfetch is a fast system information tool similar to neofetch. It displays:
- OS information
- System hardware
- Installed packages
- Custom ASCII art/logos

---

## Getting Started

### Prerequisites

- Windows 11
- PowerShell 7+ (recommended)
- Git (for cloning this repository)

### Installation Steps

1. **Clone the repository:**
   ```powershell
   git clone https://github.com/Codecity001/dot_files.git
   cd dot_files
   ```

2. **PowerShell Setup:**
   - Copy `PowerShell/Microsoft.PowerShell_profile.ps1` to your PowerShell profile location:
     ```powershell
     $PROFILE  # Shows your profile path
     ```
   - Copy `.config` folder to your user home directory:
     ```powershell
     Copy-Item -Path ".\.config\*" -Destination "$env:USERPROFILE\.config" -Recurse -Force
     ```

3. **Install PowerShell Modules:**
   - Most modules can be installed via PowerShellGet:
     ```powershell
     Install-Module -Name oh-my-posh, posh-git, PSFzf, Terminal-Icons, z -Scope CurrentUser
     ```

4. **Font Customization:**
   - Navigate to the `Fonts/` directory
   - Right-click the desired `.reg` file and select "Merge"
   - Restart applications for changes to take effect

5. **Windhawk Setup:**
   - Download and install Windhawk from [ramensoftware.com](https://ramensoftware.com/windhawk)
   - Import the `.json` configuration files from the `Windhawk/` directory
   - Enable the desired mods

6. **Fastfetch Configuration:**
   - Copy `.config/fastfetch/` to your home directory or C:\Users\<username>\.config folder
   - Run `fastfetch` to display system information

### First Run

After setup, restart PowerShell to load all configurations. You should see:
- Custom prompt with git information
- File and folder icons in the terminal
- Performance metrics (profile load time)

---
## Usage Tips

### PowerShell Enhancements

- **Use `z` for quick navigation:**
  ```powershell
  z FolderName  # Jump to frequently used folder
  ```

- **Fuzzy finding with PSFzf:**
  ```powershell
  Ctrl+R  # Fuzzy search command history
  ```

- **Git integration with posh-git:**
  - Git status automatically displays in prompt
  - Use tab completion for git commands


---
### Fonts

Located in: `Fonts/`

System font customization tools and registry files for Windows 11.

**Files:**
- **ArialBold.reg** - Registry file to set Arial Bold as the default system font
- **ArialRoundedMTBold.reg** - Registry file to set Arial Rounded MT Bold as the default font
- **Change_default_system_font.reg** - Generic registry file for changing the default system font
- **Restore_default_system_font.reg** - Restore Windows 11 to its default system font
- **advchange.exe** - Utility executable for advanced font changes
- **changesize.exe** - Utility executable for changing font sizes

**Usage:**
1. Right-click on any `.reg` file and select "Merge" to apply the font change
2. Or use the `.exe` utilities for more advanced customization
3. Use the restore file to revert to Windows defaults

---

### PowerShell

Located in: `PowerShell/`

Custom PowerShell environment with enhanced modules and configurations.

#### Main Files

- **Microsoft.PowerShell_profile.ps1** - Main PowerShell profile that:
  - Starts a timer to measure profile load time
  - Loads the user profile from `.config\powershell\user_profile.ps1`
  - Displays performance metrics on startup

- **powershell.config.json** - PowerShell configuration settings:
  - Sets execution policy to `RemoteSigned` for secure script execution

#### Modules

Custom PowerShell modules installed in `PowerShell/Modules/`:
 Make sure to change user_name to your `username` in all files from Modules folder files 

- **Microsoft.PowerToys.Configure** (v0.97.2.0)
  - PowerToys integration and configuration management
  - Enables programmatic control over Windows 11 PowerToys

- **Microsoft.WinGet.CommandNotFound** (v1.0.4.0)
  - Windows Package Manager integration
  - Suggests package installation when commands are not found

- **oh-my-posh** (v7.85.2)
  - Powerful prompt theme engine
  - Supports custom themes and segments
  - Version 7.85.2 is the latest

- **posh-git** (v1.1.0)
  - Git information and completions for PowerShell
  - Displays git status in the prompt
  - Version 1.1.0 includes enhanced features

- **PSFzf** (v2.7.9)
  - Fuzzy finding integration for PowerShell
  - Integrates with fzf for command history and file searching
  - Latest version: 2.7.9

- **PSReadLine** (v2.4.2)
  - Advanced line editing and command history
  - Provides bash-like editing experience
  - Version 2.4.2 includes recent improvements

- **Terminal-Icons** (v0.11.0)
  - Beautiful file and folder icons in terminal
  - Shows icons for common file types

- **PowerShellGet** (v2.2.5)
  - Package management for PowerShell modules

- **z** (v1.1.14)
  - Directory jumping utility
  - Quickly navigate frequently used directories

- **PowerToys.Configure** Module
  - Advanced Windows 11 PowerToys configuration

#### Configuration

- **.config/powershell/user_profile.ps1** - User-specific PowerShell profile containing:
  - Custom aliases and functions
  - Module imports and configurations
  - Environment setup

- **.config/powershell/my_theme.omp.json** - Oh-My-Posh custom theme configuration

---