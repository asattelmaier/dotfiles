# dotfiles

Configurations for everyday use

## Installation

Clone the repository **with submodules** and run the install script to symlink
all dotfiles to your `$HOME` directory:

```bash
git clone --recurse-submodules https://github.com/asattelmaier/dotfiles.git ~/dotfiles
cd ~/dotfiles
./install.sh
```

If you cloned the repository without the `--recurse-submodules` flag,
initialize the submodules manually:

```bash
git submodule init
git submodule update
```
