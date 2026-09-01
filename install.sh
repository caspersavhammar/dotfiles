cd ~

git clone git@github.com:caspersavhammar/dotfiles.git
mv dotfiles .dotfiles
rm -rf .config/sway .config/waybar
ln -s ~/.dotfiles/swayCachy ~/.config/sway
ln -s ~/.dotfiles/waybarSway ~/.config/waybar
mkdir Pictures
mkdir Pictures/background
ln -s ~/.dotfiles/Artemis.jpeg ~/Pictures/background
rm .zshrc
ln -s ~/.dotfiles/zshrc ~/.zshrc
ln -s ~/.dotfiles/gitconfig ~/.gitconfig
sudo pacman -Syu
sudo pacman -S wl-mirror brighnessctl npm lazygit swaybg swaylock ttf-jetbrains-mono-nerd valgrind gdb gcc python zsh-autosuggestions zsh-syntax-highlighting zsh lua luarocks okular fastfetch fzf neovim vim vi btop htop bat scrot tmux rofi typst ghostty discord \ 

cd ~/.config

git clone git@github.com:caspersavhammar/ghosttyConfig.git
mv ghosttyConfig ghostty
git clone git@github.com:caspersavhammar/tmuxConfig.git
mv tmuxConfig tmux
git clone git@github.com:caspersavhammar/nvimConfig.git
mv nvimConfig nvim

cd ~
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
cd ..
rm -rf paru
paru
paru -S zsh-vi-mode visual-studio-code-bin spotify
