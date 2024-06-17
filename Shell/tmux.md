%- It is a multiplexur that allow terminal under terminal.
- To enter into the tmux just type `tmux` and enter command .
- Once it is activated there is green singnal at the bottom .
- By running evrything in the tmux we are getting protection from the sudden breakdown of the process .
- To check whether the tmux is intalled in the system or not jsut run this command . `command -v tnux`
- `ctrl+b` Before doing anything in the tmux we do the this prefix and then we pass the instruction .
- `tmux -v ` This is verbose logging use for the debuugin or troubleshooting login.
- `ctrl+b` then press the `b` it will detached you from the session . At this point you are not using the tmux and you are detached from the session .
- But here is the cache now run the command `tmux list-session` it will list the time of creation of the tmux .This means that the tmux is runnig in the background .Even with the ssh . it will be the same .
- `tmux-attach` This will bring back the existing session as it was left  .
- `ctrl+b` and `shift+5` This will break the tmux into multiple two part horizontially .
- `ctrl+b` and `shift+"` This will breal the tmux into new part .
- - `ctrl+b` and up down and left arrow this will change the our key into different location .

# Day 2
- `Prefix + use of arrow ` We can move from one terminal to another terminal using the arrow key .
- `Prefix +
- `exit` - This command will exit the session of the specific quadrant .
- `top` - This will list the number of process running in the system .
- `Prefix+ D` This will detach the session . It means that it wont terminate the session . In detachment mode all the proces of the quadrant will be in the running mode for rhe sure  .
- `tmux attach ` This will attach the session .
- `tmux kill - pane ` This will kill the desired quadrant .
 # Windows 
 - In tmux it  is not he typical os which we see in the Microsoft  .
 - `tmux new-window` This will create the new window of the tmux .
   - `Prefix+c` This will create the new window .
   - `Prefix+p` This will move from one window to another window .
   - `Prefix+'` This will ask you the index where do you want to switch yourself in the window . 
- `tmux rename-window desiredname` This will give the name of the window . 
- `tmux kill-pane` at the desired window will kill the desired quadrant .
# Session Management 
