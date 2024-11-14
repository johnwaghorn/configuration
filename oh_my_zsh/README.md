# Oh My Zsh!

Oh My Zsh! is a popular zsh configuration framework. It comes with a lot of plugins and themes. The starship prompt is a fast and customizable prompt that can be used with Oh My Zsh!. This is a simple setup guide for Oh My Zsh! with the starship prompt.

To follow this guide please follow the steps below in order.

## Prerequisites

- Install [Fira Code Nerd Font](../fonts/FiraCodeNerdFont-Regular.ttf)
- Install [Starship](../starship/README.md)

## Install Zsh

On Ubuntu

```bash
sudo apt install zsh
```

On macOS, you probably already have it installed

```bash
brew install zsh
```

> [!NOTE]
> If you want to install Oh My Zsh! on Windows, you can follow the [Windows Zsh Terminal](./on_windows/windows_zsh_terminal.md) guide.

## Install Oh My Zsh!

```bash
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## Run the setup script

To setup the Oh My Zsh! plugins and add the starship prompt to your zsh configuration, you can run the following script.

```bash
./oh_my_zsh_first_setup.sh
```
