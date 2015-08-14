# dotfiles
Various configuration files

Can be installed with GNU Stow in the following way

```bash
cd ~
git clone git@github.com:crea1/dotfiles.git
cd dotfiles
stow git
```

To uninstall 

```bash
cd dotfiles
stow -D git
```

To reload if package got new files

```bash
cd dotfiles
stow -R git
```


