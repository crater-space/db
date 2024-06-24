(
 ("fd" ((:APT "fd-find")))
 ("steam" ((:FLATPAK "com.valvesoftware.Steam"))
          ("steam-powered"))
 ("android-tools" ((:APT "android-platform-system-core")
                   (:CASK "android-platform-tools")))
 ("pipewire" ((:APT "pipewire" "pipewire-pulse" "pipewire-alsa")
              (:DNF "pipewire" "pipewire-alsa")
              (:PACMAN "pipewire" "pipewire-pulse" "pipewire-alsa")
              (:XBPS "pipewire" "alsa-pipewire" "libspa-bluetooth")
              (:BREW)
              (:CASK))
             nil
             nil
             ("sudo mkdir -p /etc/pipewire/pipewire.conf.d"
              "sudo ln -s /usr/share/examples/wireplumber/10-wireplumber.conf /etc/pipewire/pipewire.conf.d/"
              "sudo ln -s /usr/share/examples/pipewire/20-pipewire-pulse.conf /etc/pipewire/pipewire.conf.d/"))
 ("r" ((:APT "r-base")
       (:DNF "R")
       (:XBPS "R"))
      ("R"))
 ("imaginary-package" nil
                      nil
                      ("echo \"These are pre-scripts\"")
                      ("echo \"These are post-scripts\""))
 )
