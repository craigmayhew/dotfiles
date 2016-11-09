# Dotfiles


## Overview

This repo is used by me to keep my environments identical. It contains my preferences and has a cache of shortcuts and commands. It's used in my docker files https://github.com/craigmayhew/rig/.

## Installation

**Warning:** If you want to give these dotfiles a try, make sure to backup your existing files or modify the below command to use an empty home directory!

```
cd /home/user/ && git clone https://github.com/craigmayhew/dotfiles.git && rsync -a dotfiles/ /home/user/ && rm -rf /home/user/dotfiles
```

#### .ssh/authorized_keys
  - My current public encryption key.

#### .bash_history
  - An initital history template that contains some useful commands.

#### .bash_profile
  - Define alias commands e.g. l='ls -lha'
  - Add colours to terminal
  - Add git information to directory path
  
#### .vimrc
  - Set default history, undo directory
  - Set soft tabs
  - Use pathogen
  - Set syntax highlighting
  - Set colours
