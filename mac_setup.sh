# setup homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# upgrade packages via homebrew 
brew update && brew upgrade

# install some pakages
brew install git clang

# install n for node version management
sudo npm i -g n

# install rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# setup yarn properly
corepack enable
corepack prepare yarn@3.2.1 --activate

# setup my git configs
git config --global user.name "Shubh"
git config --global user.email "vishwajitg471@gmail.com"

# add change id hook
git config --global init.templatedir '~/.git-templates'
mkdir -p ~/.git-templates/hooks
curl -Lo ~/.git-templates/hooks/commit-msg https://raw.githubusercontent.com/Imshubh69/my_script/main/commit-msg
chmod 755 ~/.git-templates/hooks/commit-msg

# setup oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# setup vim.plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# setup yarn-s script to use yarn berry instead oflegacy yarn 1 in repo

echo 'yarn-s(){
yarn set version stable
printf "# yarn stuff
.pnp.*
.yarn/*
!.yarn/patches
!.yarn/plugins
!.yarn/releases
!.yarn/sdks
!.yarn/versions">> .gitignore
}'>> ~/.zshrc
