Focus-Window
============

A PowerShell module / cmdlet for easily switching between windows.

Use `Focus-Window query` to focus the first window matching the given query.  
Auto-completion is built-in, and will suggest every existing window on the
current desktop when <Tab> is pressed.

## Usage

```powershell
# Focus the first window that contains the name 'pwsh'.
Focus-Window pwsh

# Focus the first window that equals the name 'pwsh'.
Focus-Window '^pwsh$'

# Focus the window with the handle 101010, if it exists.
Focus-Window 101010

# Focus the window with the handle 202020, if it exists.
Focus-Window 'foo bar (202020)'
```

## Installation

Using [PowerShellGet](https://github.com/PowerShell/PowerShellGet), install the module:

```powershell
Install-Module Focus-Window
```

Then, import it:

> Note the addition of `-DisableNameChecking`, which is required since `Focus-Window`
> begins with "Focus," which is not an approved PowerShell verb.

```powershell
Import-Module Focus-Window -DisableNameChecking
```

Adding an alias such as `w` is also suggested, but not done by default:

```powershell
Set-Alias w Focus-Window
```
