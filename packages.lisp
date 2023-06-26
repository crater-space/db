(
 ("fd" ((:apt "fd-find")))
 ("steam" ((:flatpak "com.valvesoftware.Steam"))
          ("steam-powered"))
 ("android-tools" ((:apt "android-platform-system-core")
                   (:cask "android-platform-tools")))
 ("pipewire" ((:apt "pipewire" "pipewire-pulse" "pipewire-alsa")
              (:dnf "pipewire" "pipewire-alsa")
              (:pacman "pipewire" "pipewire-pulse" "pipewire-alsa")
              (:xbps "pipewire" "alsa-pipewire" "libspa-bluetooth")
              (:brew)
              (:cask)))
 ("imaginary-package" nil
                      nil
                      ("echo \"These are pre-scripts\"")
                      ("echo \"These are post-scripts\""))
 )
