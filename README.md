# Dotfiles
Install the dotfiles in your home directory.

```bash
# Clone this repository.
$ git clone git@github.com:wvell/dot.git ~/.dot

# Symlink the config files.
$ ln -sfv ~/.dot/nvim ~/.config/nvim
$ ln -sfv ~/.dot/tmux.conf ~/.tmux.conf

# Clone tpm (tmux plugin manager)
$ git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Important when running tmux for the first time run the following shortcuts to install the plugins.
# C-a I
```

