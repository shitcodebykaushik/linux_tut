- nmap -A 10.10.13.135
  - A this contaons the several powerful scanning techniques to gather extensive information about the target machine . It enables the following things like 
   - OS detection
   - Version detection
   - Script scanning as it runs the default script from th Nmap Scripting engine to identify vulnerabilities misconfiguration or  additional information about the target machine.
   - Performs the tracroute to map the network to the target machine showing the intermidate hops .
# Making the `etc/host` file on linux
- This is how the linux machine know to resolve an Ip address to a host name  .
- Go inside the etc.host directoru and give your IP address then save it and when  you run the name of the file then you will find the ping back response in the system .

- There must be the python code executaion - Reverse shell 
- Post-Explotion Uncover credentials in a directory .
- Enumerate an older version of  the application 
- Create a custom script   dicover an endpoint 
- Fuzz passwords 

Enumaration 

- Rustscan is the tool we can use for the enumeration of
   - `rustscan  -a 10.10.13.65 -- -A`
   - `Open 10.10.13.65:22     # SSH
Open 10.10.13.65:53     # DNS
Open 10.10.13.65:80     # HTTP (Web)
Open 10.10.13.65:81     # Alternate HTTP
Open 10.10.13.65:111    # RPC (Remote Procedure Call)
Open 10.10.13.65:389    # LDAP (Lightweight Directory Access Protocol)
Open 10.10.13.65:3389   # RDP (Remote Desktop Protocol)
Open 10.10.13.65:5901   # VNC (Virtual Network Computing)
Open 10.10.13.65:6001   # X11 (Graphical Remote Session)
Open 10.10.13.65:7777   # Custom Port (Possibly HTTP or an Application)
Open 10.10.13.65:7778   # Custom Port`

