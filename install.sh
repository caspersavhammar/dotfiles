cd ~

# DO THIS!
#git clone git@github.com:caspersavhammar/dotfiles.git
#mv dotfiles .dotfiles

rm -rf ~/.config/sway .config/waybar
ln -s ~/.dotfiles/sway ~/.config/sway
ln -s ~/.dotfiles/waybar ~/.config/waybar
mkdir -p ~/Pictures/background
ln -s ~/.dotfiles/images/Artemis.jpeg ~/Pictures/background/
rm ~/.zshrc
ln -s ~/.dotfiles/zshrc ~/.zshrc
ln -s ~/.dotfiles/gitconfig ~/.gitconfig
ln -s ~/.dotfiles/rofi/ ~/.local/share/
sudo pacman -Syu
sudo pacman -S dolphin wl-mirror brighnessctl npm lazygit swaync swaybg swaylock ttf-jetbrains-mono-nerd valgrind gdb gcc python zsh-autosuggestions zsh-syntax-highlighting zsh lua luarocks okular fastfetch fzf neovim vim vi btop htop bat scrot tmux rofi typst ghostty discord \ 

git clone git@github.com:caspersavhammar/ghosttyConfig.git ~/.config/
mv ~/.config/ghosttyConfig ~/.config/ghostty
git clone git@github.com:caspersavhammar/tmuxConfig.git ~/.config/
mv ~/.config/tmuxConfig ~/.config/tmux
git clone git@github.com:caspersavhammar/nvimConfig.git ~/.config/
mv ~/.config/nvimConfig ~/.config/nvim

cd ~
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
cd ..
rm -rf paru
paru
paru -S zsh-vi-mode visual-studio-code-bin spotify

# install oh-my-zsh: https://ohmyz.sh/
