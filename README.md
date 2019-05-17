# dans-vim-config #
Custom vim configuration. It is an entire ~/.vim directory. Tested under Ubuntu and Cygwin.

## Installation ##
```
git clone https://dangitos@bitbucket.org/dangitos/dans-vim-config.git
cp -r vim-config/* ~/.vim/
# May be conflicts with exisiting vim configuration.
mv ~/.vim/.vimrc ~/.vimrc
```

## Features ##
* Indent guides.
* Delimeter highlighting.
* Directory tree viewer with NERDTree.
* Shortcuts for running scripts and compiling files.

## Keyboard Shortcuts ##
These shortcuts can be used in any mode.

### I/O ###
**ENTER + s**
- Save current file.

**ENTER + e**
- Open last file opened in current tab.

**ENTER + v**
- Open ~/.vimrc file in current tab.

**ENTER + x**
- Reload ~/.vimrc file.

**ENTER + n**
- Toggle view files panel with NERDTree.

### Tabs ###
**ENTER + t**
- Create a new tab.

**ENTER + p**
- Move to next tab on right.

**ENTER + z**
- Move to next tab on left.

**ENTER + q**
- Close current buffer/tab.

### Movement ###
**ENTER + h**
- Move to buffer on left.

**ENTER + l**
- Move to buffer on right.

**Ctrl + C**
- In insert mode splits line after delimeter.

### Code Execution ###
**ENTER + a**
- Run nodejs on current file.

**ENTER + y**
- Run Python interpreter on current file.

## Customizing ##
Plugins can be installed as usual. The file ~/.vimrc contains all the keyboard shortcuts. Here is a sample shortcut:
```vl
""" run current file with python
map <leader>y :execute "!" . vpython . " %"<CR>
map! <leader>y <Esc>:execute "!" . vpython . " %"<CR>

```

## Variables ##
**vpython** - Path to a python interpreter to use for python macro.  
**vbc** - Path to Visual Basic compiler to use for VB macro.  
**vnode** - Path to Node.js interpreter.
