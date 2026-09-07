I'm using GNU Stow to setup my dot files

### Steps:
```
git clone git@github.com:ericfer/dotfiles.git
cd dotfiles
brew install stow
stow -t ~ */
```

**Obs:**
* -t aponta para a raiz a partir de onde os symlinks serão criados
* */ configura todos os packages que tem no repo. Se não quiser configurar todos, pode atribuir o nome de um package específico