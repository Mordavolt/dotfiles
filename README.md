# dotfiles


## Instructions
Clone and type 
```bash
./install.sh
```

## Contents

* scripts - contains scripts that will be called from install.sh
* static - contains all files that are not symlinked, but will be used directly from ~/dotfiles/static
* all other folders - will be installed using stow

### Stow
Stow will install symlinks relative to home, so
```bash
mkdir test
touch test/.one
mkdir test/testado
touch test/testado/.two
stow --no-folding test
```
will symlink
```text
..
├── .one
└── testado
    └── .two
```