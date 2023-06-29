(
 ("apt" (:COMMAND "apt")
        (:SEARCH "apt search")
        (:LIST "apt list")
        (:INSTALL "sudo apt install -y")
        (:REMOVE "sudo apt uninstall -y")
        (:UPDATE "sudo apt update && sudo apt upgrade"))
 ("dnf" (:COMMAND "dnf")
        (:SEARCH "dnf search")
        (:LIST "dnf list")
        (:INSTALL "sudo dnf install -y")
        (:REMOVE "sudo dnf uninstall -y")
        (:UPDATE "sudo dnf update"))
 ("pacman" (:COMMAND "pacman")
           (:SEARCH "pacman -Ssq")
           (:LIST "pacman -Q")
           (:INSTALL "sudo pacman -S --noconfirm")
           (:REMOVE "sudo pacman -R --noconfirm")
           (:UPDATE "sudo pacman -Syu --noconfirm"))
 ("paru" (:COMMAND "paru")
         :EXTERNAL
         (:SEARCH "paru -Ssq")
         (:LIST "paru -Q")
         (:INSTALL "paru -S --noconfirm")
         (:REMOVE "paru -R --noconfirm")
         (:UPDATE "paru -Syu --noconfirm"))
 ("xbps" (:COMMAND "xbps-query")
         (:SEARCH "xbps-query -Rs")
         (:LIST "xbps-query -s")
         (:INSTALL "sudo xbps-install -S")
         (:REMOVE "sudo xbps-remove -R")
         (:UPDATE "sudo xbps-install -Su"))
 ("flatpak" (:COMMAND "flatpak")
            :EXTERNAL
            (:SEARCH "flatpak search")
            (:LIST "flatpak list")
            (:INSTALL "sudo flatpak install")
            (:REMOVE "sudo flatpak uninstall")
            (:UPDATE "sudo flatpak update"))
 ("snap" (:COMMAND "snap")
         :EXTERNAL
         (:SEARCH "snap find")
         (:LIST "snap list")
         (:INSTALL "snap install")
         (:REMOVE "snap remove")
         (:UPDATE "snap refresh"))
 ("brew" (:COMMAND "brew")
         (:SEARCH "brew search")
         (:LIST "brew list")
         (:INSTALL "brew install")
         (:REMOVE "brew uninstall")
         (:UPDATE "brew upgrade"))
 ("cask" (:COMMAND "brew")
         (:SEARCH "brew search --cask")
         (:LIST "brew list --cask")
         (:INSTALL "brew install --cask")
         (:REMOVE "brew uninstall --cask")
         (:UPDATE "brew upgrade --cask"))
 )
