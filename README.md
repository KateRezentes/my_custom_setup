# Custom Commands

This file allows you to add terminal command shortcuts, making it easier and faster to execute frequently used commands.

**For Example**: 

Instead of running
```shell
git add .
git commit -m "message"
```

You could run
```script
gac "message"
```

## Setup Instructions
  1. Clone the repository to your local machine:

```shell
git clone https://github.com/simplebet/pricing_custom_terminal_commands.git
```

  2. Add the following line to your shell configuration file (.zshrc or .bashrc), replacing <path_where_repo_was_cloned> with the full path to the cloned repository:

```bash
source ~/<path_where_repo_was_cloned>/.custom_commands
```


  3. After updating your shell configuration, reload it:

```shell
source ~/.zshrc    # For Zsh
source ~/.bashrc   # For Bash
```

## Adding Custom Commands
  1. Open the .custom_commands file in your preferred text editor:
```shell
open <path_where_repo_was_cloned>/.custom_commands
```

  2. Add your short cut as a function or a alias

Use `alias` if the short cut does not need to take any arguments
```
alias gps="git push"
```

Use `function` if your short cut requires parameters
```
function gct () {
  git commit -m $1
}
```

**Note** if your shortcut takes multiple parameters you can reference them by there order.
`shortcut param1 param2 param3'

```
funciton name() {
  short cut code with a reference to param1 $1
  now I will reference parma3 $3
  and just to be a silly goose I won't even reference param2
}
```

  4. Save the file and reload your shell configuration:
```shell
source ~/.zshrc    # For Zsh
source ~/.bashrc   # For Bash
```

**Note** : After sourcing your .zshrc file, you can use the `updt` command, which is an alias for `source ~/.zshrc`. This allows you to quickly apply updates. Simply run `updt` in the terminal after making changes to the .custom_commands file to immediately source the updates.

**Usage Example**

If you added the following line to `.custom_commands`:
```script
alias gco="git checkout"
```

Then run `updt` in terminal

You can now use gco in the terminal as a shortcut for git checkout.

Notes
- Ensure you have proper permissions to edit your shell configuration file.
- Reloading the shell configuration (source ~/.zshrc or source ~/.bashrc) is necessary for changes to take effect.




---
# VSCode Setup
## Default Open Files in VS Code
- Open Command Palette:  
  **Cmd+Shift+P** (Mac) or **Ctrl+Shift+P** (Windows/Linux)  
- Search: `Shell Command: Install 'code' command in PATH`
- You can also add an alias in `~/.zshrc` if you prefer to use `open` instead of `code`.

## Increase VS Code Integrated Terminal Scrollback
- Open Settings: **Cmd+,** (Mac) or **Ctrl+,** (Windows/Linux)  
- Search for: `terminal.integrated.scrollback`
- Default: **1000 lines**
- Increase to something larger, e.g.:  
  ```json
  "terminal.integrated.scrollback": 5000

  chmod +x vscode_setup.sh
  ./vscode_setup.sh
