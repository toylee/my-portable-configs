
__This project is just for my portable use.__
  
__`my-portable-configs` will download nothing during automatic work, this means`my-portable-configs` won't install any software automatically, it will cut off a lot energy to program the install the software in different platform.__

### Usage ###

1. add a folder that contains your configs.

2. write a install bash in your folder.

3. add a line in `initial.sh` to execute your intall bash script.(default target workplace is HOME, change it if you want something else)

4. `source initial.sh`.

### TODO ###

- [ ] May add more configs.

- [ ] `.tmux.conf` should be a soft link, otherwise I'll update config file twice.

### Reference ###

- [Zsh](zsh.sourceforge.net/ ) 

- [Tmux](tmux.sourceforge.net/ ) 

- [Emacs Wiki](http://emacswiki.org/ ) 
