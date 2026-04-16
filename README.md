# 🎨 Dot_files

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

## 🌟 Overview

This repository provides a curated collection of Windows 11 customizations designed to improve productivity, aesthetics, and user experience. It includes:

- 🖥️ **Terminal Enhancements**: Custom PowerShell profile with integrated tools and themes
- 🔤 **System Font Management**: Registry-based font switching utilities
- 🎭 **UI Customizations**: Windhawk mods for taskbar, start menu, and file explorer styling
- 📊 **Terminal Information**: Fastfetch configuration for system information display

---

## 📂 Directory Structure

```
dot_files/
├── LICENSE                              # GNU GPL v3 License
├── README.md                            # This file
├── Fonts/                               # System font customization
├── PowerShell/                          # PowerShell configuration and modules
│   ├── Modules/                         # Installed PowerShell modules
│   ├── Scripts/                         # PowerShell scripts
│   ├── Microsoft.PowerShell_profile.ps1 # Main PowerShell profile
│   └── powershell.config.json           # PowerShell configuration
├── Windhawk/                            # Windows UI customization mods
│   └── *.json/*.yaml                    # Windhawk mod configurations
└── .config/                             # Application configuration files
    ├── powershell/                      # PowerShell user profile and theme
    └── fastfetch/                       # Fastfetch configuration
```

---

### ⚙️ Configuration Files

Located in: `.config/`

#### 🔵 PowerShell Configuration

- **.config/powershell/user_profile.ps1** - Custom user profile with:
  - Alias definitions
  - Function definitions
  - Module initialization
  - Custom keybindings

- **.config/powershell/my_theme.omp.json** - Oh-My-Posh theme defining:
  - Prompt segments (git status, directory, time, etc.)
  - Colors and styling
  - Symbol definitions

#### 📈 Fastfetch Configuration

- **.config/fastfetch/config.jsonc** - Main configuration file for system information display
- **.config/fastfetch/ascii.txt** - Custom ASCII art for system information output

Fastfetch is a fast system information tool similar to neofetch. It displays:
- OS information
- System hardware
- Installed packages
- Custom ASCII art/logos

---

## 🚀 Getting Started

### ✅ Prerequisites

- 🪟 Windows 11
- 🐚 PowerShell 7+ (recommended)
- 🔀 Git (for cloning this repository)

### 📋 Installation Steps

1. **📥 Clone the repository:**
   ```powershell
   git clone https://github.com/Codecity001/dot_files.git
   cd dot_files
   ```

2. **🔵 PowerShell Setup:**
   - Copy `PowerShell/Microsoft.PowerShell_profile.ps1` to your PowerShell profile location:
     ```powershell
     $PROFILE  # Shows your profile path
     ```
   - Copy `.config` folder to your user home directory:
     ```powershell
     Copy-Item -Path ".\.config\*" -Destination "$env:USERPROFILE\.config" -Recurse -Force
     ```

3. **📦 Install PowerShell Modules:**
   - Install required modules for enhanced terminal experience:
     ```powershell
     Install-Module -Name oh-my-posh, posh-git, PSFzf, Terminal-Icons, z -Scope CurrentUser -Force
     ```
   - Or use Scoop:
     ```powershell
     scoop install oh-my-posh posh-git
     ```

4. **🔤 Font Customization:**
   - Navigate to the `Fonts/` directory
   - Right-click the desired `.reg` file and select "Merge"
   - Restart applications for changes to take effect

5. **🎨 Windhawk Setup:**
   - Download and install Windhawk from [ramensoftware.com](https://ramensoftware.com/windhawk)
   - Import the `.json` configuration files from the `Windhawk/` directory
   - Enable the desired mods

6. **📊 Fastfetch Configuration:**
   - Run `winget install fastfetch` to install the module
   - Copy `.config/fastfetch/` to your home directory or C:\Users\<username>\.config folder
   - Run `fastfetch` to display system information

### ▶️ First Run

After setup, restart PowerShell to load all configurations. You should see:
- Custom prompt with git information
- File and folder icons in the terminal
- Performance metrics (profile load time)

---
## 💡 Usage Tips

### 🔵 PowerShell Enhancements

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
### 🔤 Fonts

Located in: `Fonts/`

System font customization tools and registry files for Windows 11.

**📄 Files:**
- 📝 **ArialBold.reg** - Registry file to set Arial Bold as the default system font
- 📝 **ArialRoundedMTBold.reg** - Registry file to set Arial Rounded MT Bold as the default font
- 📝 **Change_default_system_font.reg** - Generic registry file for changing the default system font
- 📋 **Restore_default_system_font.reg** - Restore Windows 11 to its default system font
- 💻 **advchange.exe** - Utility executable for advanced font changes
- 💻 **changesize.exe** - Utility executable for changing font sizes

**👉 Usage:**
1. Right-click on any `.reg` file and select "Merge" to apply the font change
2. Or use the `.exe` utilities for more advanced customization
3. Use the restore file to revert to Windows defaults

---

### 🔵 PowerShell

Located in: `PowerShell/`

Custom PowerShell environment with enhanced modules and configurations.

#### 📄 Main Files

- 🔵 **Microsoft.PowerShell_profile.ps1** - Main PowerShell profile that:
  - Starts a timer to measure profile load time
  - Loads the user profile from `.config\powershell\user_profile.ps1`
  - Displays performance metrics on startup

- 📁 **powershell.config.json** - PowerShell configuration settings:
  - Sets execution policy to `RemoteSigned` for secure script execution

#### 📦 PowerShell Modules

The following modules are used in the `user_profile.ps1` file for enhanced terminal experience:

**Quick Install** (using PowerShellGet):
```powershell
Install-Module -Name oh-my-posh, posh-git, PSFzf, Terminal-Icons, z -Scope CurrentUser -Force
```

**Alternative Install** (using Scoop):
```powershell
scoop install oh-my-posh posh-git psreadline
```

**Alternative Install** (using Winget):
```powershell
winget install JanDeDobbeleer.OhMyPosh
winget install dahlbyk.posh-git
winget install junegunn.fzf
```

**Modules Used**:
- 🔧 **Microsoft.PowerToys.Configure** - PowerToys integration
- 📥 **Microsoft.WinGet.CommandNotFound** - Package manager integration
- ✨ **oh-my-posh** - Prompt theme engine
- 🔗 **posh-git** - Git integration
- 🔍 **PSFzf** - Fuzzy finding
- ✏️ **PSReadLine** - Advanced line editing
- 📺 **Terminal-Icons** - File/folder icons
- 📚 **z** - Directory jumping

**Note**: Make sure to change `user_name` to your actual username in all files from the `PowerShell/Modules` folder if present.

#### ⚙️ Configuration

- **.config/powershell/user_profile.ps1** - User-specific PowerShell profile containing:
  - Custom aliases and functions
  - Module imports and configurations
  - Environment setup

- **.config/powershell/my_theme.omp.json** - Oh-My-Posh custom theme configuration

---

### 🎭 Windhawk

Located in: `Windhawk/`

Windhawk is a powerful Windows customization engine for extensive UI customization with glass effects, translucent windows, and modern styling.

**Key Features**:
- 🎨 Glass/acrylic effects for taskbar, start menu, and windows
- 📁 File Explorer styling and enhancements
- ⏰ Advanced taskbar clock with system metrics display
- 🔧 Easy configuration through JSON mod files
- ⚡ Live updates without restart

**Quick Setup**:
1. 📥 Download Windhawk from [ramensoftware.com/windhawk](https://ramensoftware.com/windhawk)
2. 📂 Open Windhawk → **Menu** → **Import mod**
3. Select any `.json` file from `Windhawk/` folder
4. ✅ Toggle **Enable** to activate

**📖 For Detailed Documentation**:
👉 **See [Windhawk/README.md](Windhawk/README.md)** for:
- Complete mod descriptions and previews
- Step-by-step installation guide
- Configuration options and customization
- JSON/YAML format reference
- Troubleshooting and FAQ

**Available Mods**:
- Glass effects: taskbar, start menu, notification center
- File Explorer styling with acrylic effects
- Taskbar clock with network/CPU/RAM monitoring
- Icon sizing and customization
- Translucent window effects

---

## ⚖️ License

This project is licensed under the GNU General Public License v3.0 (GPL-3.0). See the [LICENSE](LICENSE) file for details.

This means:
- ✅ You are free to use, modify, and distribute this software
- ✅ Any modifications must also be licensed under GPL-3.0
- ✅ You must include a copy of the license with distributions

---

## 🤝 Contributing

Feel free to fork this repository and submit pull requests for improvements, bug fixes, or new customizations.

---

## 📚 Support & Credits

- **✨ Oh-My-Posh**: [ohmyposh.dev](https://ohmyposh.dev)
- **🎭 Windhawk**: [ramensoftware.com/windhawk](https://ramensoftware.com/windhawk)
- **🔍 PSFzf**: PowerShell Fuzzy Finder module
- **📊 Fastfetch**: Fast system information tool
- **🔗 posh-git**: Git integration for PowerShell
- **📚 z**: Directory jumping utility
- **📺 Terminal-Icons**: File and folder icons

---

## 📞 Contact & Issues

For questions, issues, or feature requests:
- 📧 Open an issue on GitHub
- 🐛 Report bugs with detailed reproduction steps
- 💡 Suggest improvements and new features

---

**📅 Last Updated:** April 2026 | **👤 Maintained by:** [Codecity001](https://github.com/Codecity001)

For detailed support, visit)