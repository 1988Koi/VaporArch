VaporArch!

A custom Arch Linux distribution built for all your DevOps work — GNOME desktop, a pre-loaded toolchain (Docker, Kubernetes, Terraform, Ansible, and more), a self-hosted package repository with automated CI/CD, and a working graphical installer.

Built from scratch: custom archiso profile, hand-written PKGBUILDs, a pacman repository hosted on GitHub Pages, GitHub Actions for automated package builds, and Calamares for installation.

Features
Base: Arch Linux, GNOME desktop, Firefox as default browser
DevOps toolchain: Docker, Podman, kubectl, Helm, Ansible, Terraform, k9s, AWS CLI, GitHub CLI, lazygit
Custom package repository: hosts packages not available in the official Arch repos (see VaporArch-Repo), built and published automatically via GitHub Actions
Installer: Calamares, configured for UEFI/GPT installs with automatic or manual partitioning
Reproducible builds: the entire ISO is built from this repo using archiso
Building the ISO

Requires an Arch Linux host with archiso installed.

bash
sudo pacman -S archiso git
git clone https://github.com/1988Koi/VaporArch.git
cd VaporArch
sudo mkarchiso -v -w /tmp/archiso-work -o /tmp/archiso-out archiso-profile/

The resulting .iso will be in /tmp/archiso-out.

Project structure
archiso-profile/
├── airootfs/             # Files overlaid into the live/installed system
│   ├── etc/calamares/    # Installer configuration and branding
│   ├── etc/dconf/        # Desktop defaults
│   └── etc/profile.d/    # Shell MOTD showing installed tool versions
├── packages.x86_64       # Full package list
├── pacman.conf           # Includes the custom VaporArch repo
└── profiledef.sh
Custom repository

VaporArch pulls a handful of packages (Terraform, k9s, Calamares) from a self-hosted pacman repository, built automatically from PKGBUILDs whenever they change. See VaporArch-Repo for the repository source, PKGBUILDs, and CI/CD pipeline.

Installing

Boot the ISO, launch Calamares from the application menu, and follow the guided install. Supports UEFI systems with automatic (erase disk) or manual partitioning.

Credits
Built on Arch Linux and archiso.
