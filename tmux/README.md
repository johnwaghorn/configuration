# tmux

Tmux is a terminal multiplexer. It lets you switch easily between several
programs in one terminal, detach them (they keep running in the background)
and reattach them to a different terminal. This guide covers how to install
tmux, how to install plugins, and how to use tmux.

## Installation and Configure

### Prerequisites

- A [copy tool](../copy_tool/README.md) like `xclip` or `pbcopy` to copy text
to the clipboard, depending on what OS you are using.
- [Fira Code Nerd Font](../fonts/README.md).
- [zsh](../zsh/README.md)
- [Starship](../starship/README.md)

### Install tmux

On Debian/Ubuntu, run:

```bash
sudo apt install tmux
```

or on macOS, run:

```bash
brew install tmux
```

### Install tmux plugin manager

```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

### Configuration

Place conf file from this repo into your home directory at `~/.tmux.conf`.

```shell
cp .tmux.conf ~/.tmux.conf
```

Ensure you modify the conf file for your OS.

```shell
vim ~/.tmux.conf
```

### Install plugins

- Start tmux
- Press `ctrl+a` and then **capital** `I` to install plugins.
- Press `ctrl+a` and then `r` to reload config

### Get started

Get going with some [useful commands](./tmux_useful_commands.md) and
[how to guides](./tmux_how_to.md).

### Start tmux when you open a terminal

If you want this to auto open, for some reason, then add the following line to
your `.bashrc` or `.zshrc` file:

```shell
# If not running interactively, do not do anything
[[ $- != *i* ]] && return
# Otherwise start tmux
[[ -z "$TMUX" ]] && exec tmux
```

## Look and Feel

What this custom tmux configuration looks like when you are in a tmux session:

![tmux](tmux.png)

Bear in mind that the prompt is configured separately using
[Starship](../starship/starship.md).

## Local Links

- [Tmux Useful Commands](tmux_useful_commands.md)
