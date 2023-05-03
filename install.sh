cp -a debian-bspwm-dotfiles/home/addy/. ~
chmod +x ~/.config/bspwm/bspwmrc
chmod +x ~/.scripts/*
sudo apt-get update
sudo apt-get install build-essential \
zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev libsqlite3-dev libbz2-dev \
xfonts-base xserver-xorg-input-all xinit xserver-xorg-video-all \
lightdm \
bspwm \
curl wget vim zsh \
hsetroot \
rofi \
xsettingsd \
thunar \
viewnior \
scrot \
chromium \
rxvt-unicode \
ncmpcpp \
vlc \
ffmpeg \
evince \
file-roller \
python3-pip gettext python-is-python3 \
dunst \
alsa-utils \
runit
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
curl -o code.deb -L http://go.microsoft.com/fwlink/?LinkID=760868
sudo apt-get install ./code.deb
rm -rf code.deb
curl -sS https://download.spotify.com/debian/pubkey_7A3A762FAFD4A51F.gpg | sudo gpg --dearmor --yes -o /etc/apt/trusted.gpg.d/spotify.gpg
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update && sudo apt-get install spotify-client
git clone https://github.com/aristocratos/bashtop.git
cd bashtop/DEB
sudo ./build
cd ~
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
