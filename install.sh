#!/bin/bash

# install go
install_go() {
    echo "Installing Go..."
    # Check if Go is already installed
    if command -v go &>/dev/null; then
        echo "Go is already installed."
    else
        # Download the latest version of Go
        GO_VERSION=$(curl -s https://golang.org/dl/ | grep -o 'go[0-9]\+\.[0-9]\+' | head -n1)
        wget "https://golang.org/dl/${GO_VERSION}.linux-amd64.tar.gz"
        # Extract and install Go
        tar -C /usr/local -xzf "${GO_VERSION}.linux-amd64.tar.gz"
        rm "${GO_VERSION}.linux-amd64.tar.gz"
        echo "Go installed successfully."
    fi
}

# install notify
install_notify() {
    echo "Installing the 'notify' Go package..."
    if command -v go &>/dev/null; then
        # Install the 'notify' package
        go install github.com/projectdiscovery/notify@latest
        echo "Notify installed successfully."
    else
        echo "Go is not installed. Please install Go first."
    fi
}

# Function to install subfinder
install_subfinder() {
    echo "Installing subfinder..."
    if command -v go &>/dev/null; then
        # Install subfinder
        go get -v github.com/projectdiscovery/subfinder/cmd/subfinder
        echo "subfinder installed successfully."
    else
        echo "Go is not installed. Please install Go first."
    fi
}

# Function to install anew
install_anew() {
    echo "Installing anew..."
    if command -v go &>/dev/null; then
        # Install anew
        go get -u github.com/tomnomnom/anew
        echo "anew installed successfully."
    else
        echo "Go is not installed. Please install Go first."
    fi
}

# install webanalyze
install_webanalyze() {
    echo "Installing webanalyze..."
    if command -v go &>/dev/null; then
        # Install webanalyze
        go get -v github.com/rverton/webanalyze/cmd/webanalyze
        echo "webanalyze installed successfully."
    else
        echo "Go is not installed. Please install Go first."
    fi
}


# main
install_go
install_notify
install_subfinder
install_anew
install_webanalyze
