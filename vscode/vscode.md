# vscode

## Install code command

To install the `code` command in PATH, open VS Code and press `ctrl+shift+p`
to open the command palette. Then search for `shell command: install 'code' in
PATH` and press enter.

## List installed extensions

To list all installed extensions, run the following command:

```shell
code --list-extensions
```

## Adding autosave

This config does not include the enabling of autosave. To enable, add the
following to `settings.json`:

```json
{
  "files.autoSave": "onFocusChange",
}
```
