# tmux

tmux is a terminal multiplexer. It lets you switch easily between several programs in one terminal, detach them (they keep running in the background) and reattach them to a different terminal. This guide covers how to install tmux, how to install plugins, and how to use tmux.

## Installation

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

Place config file `~/.tmux.conf`

### Install plugins

- Start tmux
- Press `ctrl+a` and then `I` to install plugins
- Press `ctrl+a` and then `r` to reload config

## How to copy

- Start a selection with `ctrl+a` and then `[`
- Move up with arrow keys to area you want to copy and use `v` to select
- Press `y` to copy selected area to clipboard

## How to split panes 

- split in half horizontally with `ctrl+a` and then `"`
- split in half vertically with `ctrl+a` and then `%`