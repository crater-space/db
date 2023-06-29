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
              (:CASK)))
 ("imaginary-package" nil
                      nil
                      ("echo \"These are pre-scripts\"")
                      ("echo \"These are post-scripts\""))
 )
