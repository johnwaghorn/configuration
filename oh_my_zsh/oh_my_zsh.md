# Oh My Zsh

This is a simple setup script for Oh My Zsh with the starship prompt.

## Prerequisites

### Install Zsh

On Ubuntu

```bash
sudo apt install zsh
```

or on macOS, you probably already have it installed

```bash
brew install zsh
```

### Install starship

First install a Nerdfont from [here](https://www.nerdfonts.com/font-downloads)

Then install starship

```bash
curl -sS https://starship.rs/install.sh | sh
```

### Install Oh My Zsh

```bash
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### Run the setup script

```bash
./omz_first_setup.sh
```
