# Tmux how to do things

How to do things in tmux with the keybindings set in this project.

## How to copy

- Start a selection with `ctrl+a` and then `[`
- Move up with arrow keys to area you want to copy and use `v` to select
- Press `y` to copy selected area to clipboard

## How to split panes

- Split in half horizontally: `ctrl+a` + `"`
- Split in half vertically: `ctrl+a` + `%`

## How to change session

`ctrl+a` + `s`

## How to search for text

- Enter copy mode with `ctrl+a` and then `[`
- Search forwards with `/`, or backwards with `?`, then type your text and
press `Enter`
- Jump to the next match with `n`
- Jump to the previous match (reverse direction) with `N`
- Press `q` to leave copy mode

## How to create a new window

- New window: `ctrl+a` + `c`

## How to switch between windows

- Next window: `ctrl+a` + `n`
- Previous window: `ctrl+a` + `p`
- Jump to a window by number: `ctrl+a` + `<number>` (windows start at `1`)
- Toggle to the last window: `ctrl+a` + `ctrl+a`

## How to rename a window

- `ctrl+a` + `,` then type the new name and press `Enter`

## How to move between panes

- `ctrl+a` + an arrow key, in the direction of the pane you want

## How to zoom a pane

- Toggle a pane to fullscreen and back: `ctrl+a` + `z`

## How to resize a pane

- `ctrl+a` then `ctrl` + an arrow key. Keep tapping the arrow to resize further

## How to close a pane

- `ctrl+a` + `x` then confirm with `y` (I just type `exit`)

## How to detach from a session

- `ctrl+a` + `d` — the session keeps running in the background, reattach with
`tmux attach`

## How to reload the config

- `ctrl+a` + `r` — re-sources `~/.tmux.conf` after you make changes
