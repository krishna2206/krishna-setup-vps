# Asume that the current system is Ubuntu 22.04
# Update the repositories and upgrade the system
sudo apt update -y
sudo apt upgrade -y

# Install the basic packages
sudo apt install -y exa htop curl wget git zsh tmux neofetch micro ffmpeg python3 python3-pip
python3 -m pip install setuptools wheel yt-dlp

# Setup the zsh and oh-my-zsh
sudo chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
cp .zshrc ~/.zshrc
