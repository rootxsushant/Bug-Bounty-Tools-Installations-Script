#!/bin/bash

# Function to check if Go is installed
check_go() {
    if ! command -v go &> /dev/null
    then
        echo "Go is not installed. Please install Go and ensure it is in your PATH."
        exit 1
    fi
}

# Function to install a tool using go install
install_tool() {
    TOOL=$1
    REPO=$2
    echo "Installing $TOOL..."
    go install $REPO
    if [ $? -eq 0 ]; then
        echo "$TOOL installed successfully."
    else
        echo "Failed to install $TOOL."
    fi
}

# Check if Go is installed
check_go

# Install tools
install_tool "alterx" "github.com/projectdiscovery/alterx/cmd/alterx@latest"
install_tool "assetfinder" "github.com/tomnomnom/assetfinder@latest"
install_tool "ffuf" "github.com/ffuf/ffuf@latest"
install_tool "goaltdns" "github.com/subfinder/goaltdns@latest"
install_tool "katana" "github.com/projectdiscovery/katana/cmd/katana@latest"
install_tool "qsreplace" "github.com/tomnomnom/qsreplace@latest"
install_tool "subfinder" "github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest"
install_tool "waybackurls" "github.com/tomnomnom/waybackurls@latest"
install_tool "amass" "github.com/owasp-amass/amass/v3/...@latest"
install_tool "gau" "github.com/lc/gau/v2/cmd/gau@latest"
install_tool "httprobe" "github.com/tomnomnom/httprobe@latest"
install_tool "mapcidr" "github.com/projectdiscovery/mapcidr/cmd/mapcidr@latest"
install_tool "prips" "github.com/feross/prips@latest"
install_tool "rush" "github.com/shenwei356/rush@latest"
install_tool "subzy" "github.com/lukasikic/subzy@latest"
install_tool "anew" "github.com/tomnomnom/anew@latest"
install_tool "dnsx" "github.com/projectdiscovery/dnsx/cmd/dnsx@latest"
install_tool "gf" "github.com/tomnomnom/gf@latest"
install_tool "naabu" "github.com/projectdiscovery/naabu/v2/cmd/naabu@latest"
install_tool "puredns" "github.com/d3mondev/puredns/v2@latest"
install_tool "shortscan" "github.com/shorted-org/shortscan@latest"
install_tool "tlsx" "github.com/projectdiscovery/tlsx/cmd/tlsx@latest"
install_tool "wpprobe" "github.com/Chocapikk/wpprobe@latest"

echo "All tools have been installed."
