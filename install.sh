#!/usr/bin/env bash

# Define colors
RED='\033[0;31m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
GREEN='\033[0;32m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
ORANGE='\033[0;33m'
PINK='\033[1;35m'
WHITE='\033[1;37m'
BLACK='\033[0;30m'
NC='\033[0m' # No Color

# Dirs
DIR=$(pwd)
FDIR="$HOME/.local/share/fonts"
PDIR="$HOME/.config/polybar"
RDIR="$DIR/rofi"
FoDIR="$DIR/fonts"
CDIR="$DIR/colours"

# Installing Jetbrainsmono NF
install_fonts() {
    echo -e "${GREEN}[*] Installing Jetbrainsmono NF ...${NC}"
    mkdir -p "$FDIR"
    cp -rf "$FoDIR" "$FDIR"
}

# Installing Themes
install_themes() {
    echo -e "${GREEN}[*] Making a Backup Of Your Polybar Configs...${NC}"
    [[ -d "$PDIR" ]] && mv "$PDIR" "${PDIR}-Config-Backup $"
    mkdir -p "$PDIR"
    cp -rf "$CDIR" "$PDIR"
    echo -e "${GREEN}[*] Testing the bar!!!          Don't forget to put the polybar to execute on startup!!${NC}\n"
    echo -e "${GREEN}[*] polybar -c $HOME/.config/polybar/(theme)/$COLOR.ini ${NC}\n"
}
# Main
main() {

    clear
    echo -e "${CYAN}"
    cat << 'EOF'
    _             _   _          _   _      
   / \   ___  ___| |_| |__   ___| |_(_) ___ 
  / _ \ / _ \/ __| __| '_ \ / _ \ __| |/ __|
 / ___ \  __/\__ \ |_| | | |  __/ |_| | (__ 
/_/   \_\___||___/\__|_| |_|\___|\__|_|\___|
                                            
 ____       _       _                
|  _ \ ___ | |_   _| |__   __ _ _ __ 
| |_) / _ \| | | | | '_ \ / _` | '__|
|  __/ (_) | | |_| | |_) | (_| | |   
|_|   \___/|_|\__, |_.__/ \__,_|_|   
              |___/                 One Time Installing Script :)
EOF
    echo -e "${NC}"

    echo -e "${YELLOW}[*] Choose an option -${NC}"
    echo -e "${CYAN}[1] Dark Mode${NC}"
    echo -e "${CYAN}[2] Light Mode${NC}"
    echo -e "${CYAN}[3] Custom Wallpaper (Coming Soon)${NC}"

    read -p "[?] Select an option: " OPTION

    case $OPTION in
1)
    clear
    echo -e "${YELLOW}[*] Welcome!!...${NC}"
    echo -e "${YELLOW}[*] Choose a Dark Theme Color -${NC}"
    echo -e "${RED}[1] Red${NC}"
    echo -e "${YELLOW}[2] Yellow${NC}"
    echo -e "${BLUE}[3] Blue${NC}"
    echo -e "${GREEN}[4] Green${NC}"
    echo -e "${PURPLE}[5] Purple${NC}"
    echo -e "${CYAN}[6] Cyan${NC}"
    echo -e "${ORANGE}[7] Orange${NC}"
    echo -e "${PINK}[8] Pink${NC}"
    echo -e "${WHITE}[9] White${NC}"
    echo -e "${GREEN}[10] Dark-green${NC}"
    echo -e "${NC}[11] Pywal${NC}"

    read -p "[?] Select Color Option For Testing : " REPLY

    case $REPLY in
        1) COLOR='red' ;;
        2) COLOR='yellow' ;;
        3) COLOR='blue' ;;
        4) COLOR='green' ;;
        5) COLOR='purple' ;;
        6) COLOR='cyan' ;;
        7) COLOR='orange' ;;
        8) COLOR='pink' ;;
        9) COLOR='white' ;;
        10) COLOR='green-dark' ;;
        11) COLOR='pywal' ;;
        *) echo -e "${RED}\n[!] Invalid Color Option, Exiting...${NC}\n"; exit 1 ;;
    esac
    install_fonts
    install_themes
    echo -e "${GREEN}[*] Launching Polybar with Dark Mode and selected color...${NC}"
    pkill polybar
    polybar -c "$PDIR/colours/dark-mode/$COLOR.ini" &
    
    ;;
        2)
            clear
            echo -e "${YELLOW}[*] Choose a Light Mode Color -${NC}"
            echo -e "${RED}[1] Red${NC}"
            echo -e "${YELLOW}[2] Yellow${NC}"
            echo -e "${BLUE}[3] Blue${NC}"
            echo -e "${GREEN}[4] Green${NC}"
            echo -e "${PURPLE}[5] Purple${NC}"
            echo -e "${CYAN}[6] Cyan${NC}"
            echo -e "${ORANGE}[7] Orange${NC}"
            echo -e "${PINK}[8] Pink${NC}"
            echo -e "${WHITE}[9] White${NC}"
            echo -e "${GREEN}[10] Dark-green${NC}"
            echo -e "${NC}[11] Pywal${NC}"
            read -p "[?] Select Color Option: " REPLY

            case $REPLY in
                1) COLOR='red' ;;
                2) COLOR='yellow' ;;
                3) COLOR='blue' ;;
                4) COLOR='green' ;;
                5) COLOR='purple' ;;
                6) COLOR='cyan' ;;
                7) COLOR='orange' ;;
                8) COLOR='pink' ;;
                9) COLOR='white' ;;
                10) COLOR='green-dark' ;;
                11) COLOR='pywal' ;;
                *) echo -e "${RED}\n[!] Invalid Color Option, Exiting...${NC}\n"; exit 1 ;;
            esac
            
            install_fonts
            install_themes
            echo -e "${GREEN}[*] Launching Polybar with Light Mode and selected color...${NC}"
            pkill polybar
            polybar -c "$PDIR/colours/light-mode/$COLOR.ini" &
            
            ;;
        3)
            clear
            echo -e "${YELLOW}[*] Custom Wallpaper option is coming soon, after you please star the repo!${NC}\n"
            exit 0
            ;;
        *)
            echo -e "${RED}\n[!] Invalid Option, Exiting...${NC}\n"
            exit 1
            ;;
    esac

   
}

main
