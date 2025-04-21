# dotfiles

## Instructions
Clone to homedir and type 
```bash
./install.sh
```

## Contents

* static - contains all files that are not symlinked, but will be used directly from ~/dotfiles/static
* stow-home - will be installed using stow, with stow-home matching ~.

### Stow
Stow will install symlinks relative to home, so
```bash
touch stow-home/.one
mkdir stow-home/testado
touch stow-home/testado/.two
stow --no-folding stow-home
```
will symlink
```text
..
├── .one
└── testado
    └── .two
```
