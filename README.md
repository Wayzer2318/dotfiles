# update 
sudo apt update
sudo apt upgrade
# installer zsh et le choisir comme shell
sudo apt install zsh
chsh -s $(which zsh)
# installer zinit
bash -c "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)"


# installer nvim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
sudo rm -rf /opt/nvim-linux-x86_64
sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz

# ajouter a zshrc 
export PATH="$PATH:/opt/nvim-linux-x86_64/bin"

# ajouter 10K 
zinit ice depth=1; zinit light romkatv/powerlevel10k
# installer fzf
sudo apt install fzf
# installer zoxide
sudo apt install zoxide
# installer pulse
sudo snap install pulse
# installer superfile 
bash -c "$(curl -sLo- https://superfile.dev/install.sh)"
# installer go
sudo apt-get -y install golang-go 
# installer lazy 
# Download the latest binary
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep '"tag_name":' | sed -E 's/.*"v([^"]+)".*/\1/')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
 
# Extract and install
sudo tar xf lazygit.tar.gz -C /usr/local/bin lazygit
sudo chmod +x /usr/local/bin/lazygit

# Clean up
rm lazygit.tar.gz

# installer pipx
sudo apt install pipx
pipx ensurepath
# installer ruff
pipx install ruff

# installer dotfiles
git clone https://github.com/Wayzer2318/dotfiles.git
# installer stow
sudo apt install stow
stow .
