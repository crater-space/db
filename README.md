# crater-db

A database of known packages and package sources for Crater.

## [Sources](sources.lisp)

A source can be defined as shown:

     ("xbps" (:command "xbps-query") ; Command to test whether xbps is available
             (:search "xbps-query -Rs") ; Command to search for packages
             (:list "xbps-query -s") ; Command to list installed packages
             (:install "sudo xbps-install -S") ; Command to install packages
             (:remove "sudo xbps-remove -R") ; Command to remove packages
             (:update "sudo xbps-install -Su")) ; Command to update packages

An external source needs to be explicitly marked as "external":

     ("flatpak" (:command "flatpak")
                :external ; Marks the source as external
                (:search "flatpak search")
                (:list "flatpak list")
                (:install "sudo flatpak install")
                (:remove "sudo flatpak uninstall")
                (:update "sudo flatpak update"))

**PS:** External sources are only used when explicitly mentioned against a package, while the regular sources are automatically used unless specified not to be used.

## [Packages](packages.lisp)

Entries in the file could look as shown:

    (
        ;; "fd" is available on 'apt' as "fd-find", as "fd" on other known sources
        ("fd" ((:apt "fd-find")))
        ;; "steam" is available through 'flatpak' as "com.valvesoftware.Steam"
        ("steam" ((:flatpak "com.valvesoftware.Steam"))
                 ("steam-powered")) ; also known as "steam-powered"
        ;; "android-tools" is available with different names on 'apt' and 'cask'
        ("android-tools" ((:apt "android-platform-system-core")
                          (:cask "android-platform-tools")))
        ;; "pipewire" is a collection of different packages across 'apt', 'dnf', 'pacman', and 'xbps',
        ;; but not available on 'flatpak', 'snap', 'brew' and 'cask'
        ("pipewire" ((:apt "pipewire" "pipewire-pulse" "pipewire-alsa")
                     (:dnf "pipewire" "pipewire-alsa")
                     (:pacman "pipewire" "pipewire-pulse" "pipewire-alsa")
                     (:xbps "pipewire" "alsa-pipewire" "libspa-bluetooth")
                     (:brew) ; specifies that the package isn't available on 'brew'
                     (:cask))) ; specifies that the package isn't available on 'cask'
        ("imaginary-package" nil ; does not have different names across sources
                             nil ; does not have other known names either
                             ("echo \"These are pre-scripts\"") ; needs pre-installation setup
                             ("echo \"These are post-scripts\"")) ; needs post-installation setup
    )
