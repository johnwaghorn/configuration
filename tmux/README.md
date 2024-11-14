# tmux

tmux is a terminal multiplexer. It lets you switch easily between several programs in one terminal, detach them (they keep running in the background) and reattach them to a different terminal. This guide covers how to install tmux, how to install plugins, and how to use tmux.

## Installation and Configure

### Prerequisites

- Install a copy tool like `xclip` or `pbcopy` to copy text to the clipboard,
depending on what OS you are using.
- Install [Fira Code Nerd Font](../fonts/FiraCodeNerdFont-Regular.ttf).

### Install tmux

On Ubuntu

```bash
sudo apt install tmux
```

or on macOS

```bash
brew install tmux
```

### Install plugin manager

```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

### Add Config

Place config file from this repo's directory into your home directory at `~/.tmux.conf`. Make changes to the config file as needed.

> [!NOTE]
> You may need to install `xclip` to copy text to the clipboard if you're on a Linux system, or `pbcopy` if you're on macOS.

### Install plugins

- Start tmux
- Press `ctrl+a` and then `I` to install plugins
- Press `ctrl+a` and then `r` to reload config

> [!NOTE]
> To install the plugins, you must use a capital I.

### Start tmux when you open a terminal

Add the following line to your `.bashrc` or `.zshrc` file:

```bash
# If not running interactively, do not do anything
[[ $- != *i* ]] && return
# Otherwise start tmux
[[ -z "$TMUX" ]] && exec tmux
```

## Look and Feel

What this custom tmux configuration looks like when you are in a tmux session:

![tmux](tmux.png)

Bear in mind that the prompt is configured separately using [Starship](../starship/starship.md).

## Local Links

- [Tmux Useful Commands](tmux_useful_commands.md)
