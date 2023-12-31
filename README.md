# crater-db

[![Built with Lisp](https://img.shields.io/badge/built%20with-Lisp-blueviolet)](https://lisp-lang.org)
[![License](https://img.shields.io/github/license/crater-space/db.svg)](https://opensource.org/licenses/MIT)  
[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/Y8Y5E5GL7)

A database of known packages and package sources for [Crater](https://github.com/crater-space/cli)

## [Sources](sources.lisp)

A source can be defined as shown:

     ("xbps" (:COMMAND "xbps-query") ; Command to test whether xbps is available
             (:SEARCH "xbps-query -Rs") ; Command to search for packages
             (:LIST "xbps-query -s") ; Command to list installed packages
             (:INSTALL "sudo xbps-install -S") ; Command to install packages
             (:REMOVE "sudo xbps-remove -R") ; Command to remove packages
             (:UPDATE "sudo xbps-install -Su")) ; Command to update packages

An external source needs to be explicitly marked as "external":

     ("flatpak" (:COMMAND "flatpak")
                :EXTERNAL ; Marks the source as external
                (:SEARCH "flatpak search")
                (:LIST "flatpak list")
                (:INSTALL "sudo flatpak install")
                (:REMOVE "sudo flatpak uninstall")
                (:UPDATE "sudo flatpak update"))

**PS:** External sources are only used when explicitly mentioned against a package, while the regular sources are automatically used unless specified not to be used.

### Configured Sources

The following platforms are directly supported along with their package managers:

- Adélie Linux (Coming soon)
- AlmaLinux (Coming soon)
- Alpine Linux (Coming soon)
- ALT Linux (Coming soon)
- Amazon Linux (Coming soon)
- [pacman](https://wiki.archlinux.org/title/pacman) and [paru](https://github.com/Morganamilo/paru) for [Arch Linux](https://archlinux.org)
- CentOS (Coming soon)
- [apt](https://wiki.debian.org/Apt) for [Debian](https://www.debian.org), [Ubuntu](https://ubuntu.com), [Linux Mint](https://linuxmint.com) and derivatives
- [dnf](https://docs.fedoraproject.org/en-US/quick-docs/dnf) for [Fedora](https://fedoraproject.org) and derivatives
- KaOS (Coming soon)
- [Homebrew](https://brew.sh) and [Cask](https://github.com/Homebrew/homebrew-cask) for [macOS](https://www.apple.com/macos)
- Mageia (Coming soon)
- OpenMandriva (Coming soon)
- OpenSUSE (Coming soon)
- OpenWrt (Coming soon)
- Oracle Linux (Coming soon)
- PCLinuxOS (Coming soon)
- Red Hat Enterprise Linux (Coming soon)
- Rocky Linux (Coming soon)
- Slackware (Coming soon)
- Solus (Coming soon)
- [xbps](https://docs.voidlinux.org/xbps/index.html) for [Void Linux](https://voidlinux.org)

There are also the following platform-independent sources:

- [Flatpak](https://flatpak.org)
- [Snap](https://snapcraft.io)

## [Packages](packages.lisp)

Entries in the file could look as shown:

    (
        ;; "fd" is available on 'apt' as "fd-find", as "fd" on other known sources
        ("fd" ((:APT "fd-find")))
        ;; "steam" is available through 'flatpak' as "com.valvesoftware.Steam"
        ("steam" ((:FLATPAK "com.valvesoftware.Steam"))
                 ("steam-powered")) ; also known as "steam-powered"
        ;; "android-tools" is available with different names on 'apt' and 'cask'
        ("android-tools" ((:APT "android-platform-system-core")
                          (:CASK "android-platform-tools")))
        ;; "pipewire" is a collection of different packages across 'apt', 'dnf', 'pacman', and 'xbps',
        ;; but not available on 'flatpak', 'snap', 'brew' and 'cask'
        ("pipewire" ((:APT "pipewire" "pipewire-pulse" "pipewire-alsa")
                     (:DNF "pipewire" "pipewire-alsa")
                     (:PACMAN "pipewire" "pipewire-pulse" "pipewire-alsa")
                     (:XBPS "pipewire" "alsa-pipewire" "libspa-bluetooth")
                     (:BREW) ; specifies that the package isn't available on 'brew'
                     (:CASK))) ; specifies that the package isn't available on 'cask'
        ("imaginary-package" nil ; does not have different names across sources
                             nil ; does not have other known names either
                             ("echo \"These are pre-scripts\"") ; needs pre-installation setup
                             ("echo \"These are post-scripts\"")) ; needs post-installation setup
    )
