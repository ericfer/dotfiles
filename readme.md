I'm using Stow to setup my dot files

Steps:
> brew install stow
> <clone repo>
> cd dotfiles
> stow -t ~ <package_name>

#  -t aponta para a raiz a partir de onde os symlinks serão criados
# <package_name> é o nome do diretório dentro do diretório dotfiles, que representa uma ferramenta que você quer configurar/linkar