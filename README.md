# white-rice
Configuration files (dotfiles) for a white themed linux setup.

## Installing

First, clone the repository into your home directory.
```
git clone https://github.com/AtticusHelvig/white-rice ~/.white-rice
cd ~/.white-rice
```

### With GNU Stow

#### Everything

If you want to copy all of the configurations, run the following command in the directory you cloned to.
```
stow -t ~ -S kitty
```

#### Specific Package

If you only want part of the configuration, you can run the following command on any of the packages located in the white-rice directory.
```
stow -t ~ -S <package_name>
```
For example, to use only the kitty configuration:
```
stow -t ~ -S kitty
```

For more information on `stow`, see its [documentation](https://www.gnu.org/software/stow/manual/stow.html) or use the `man stow` command.

### Manually

It is also possible to copy/move the files to their destinations manually, instead of automated symlinking with stow. Inside of each package, the files are placed in their destinations relative to your home directory.

For example, in the `kitty` directory is a folder named `.config`. This corresponds with the `.config` folder in your home directory. Moving the contents of `kitty/.config` into `~/.config` *should* correctly place them for use.
