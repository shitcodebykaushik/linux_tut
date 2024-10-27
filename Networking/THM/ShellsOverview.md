- A shell is the software that allows a user to interact with the os . It can be graphical interface but it usucally be the command- line interface and this depends on the operating system .
- In cybersecurity it usually  refers to the specific session an attacker uses when the accessing a compromised system allowing them to run commands and execute software . 
-  Shell helps the attacker to execute commands remotely on the target machine .
-  It helps the attacker to esclate the privileges to more eleveted or administrative access .
-  Once the attacker access to execute commands through the obtained shell  they can explore the system to read and copy the data from it  .
-  Post-Exploation Activities as the shell has been accessed attacker can perform the following actions such as the deploying the malware creating the hidden account etc .
- Access the system to access the systemn   network . Depending on goal of the attacker
- A reverse shell is also called connect back shell is one of the most popular techniques for gaining access to the system in the cyber.
-  A revese shell will connect back to the attacker machine . This machine will waiting for a connection .
- nc is the netcat listner 
-  Bind shell will bind a port on the compromised system and listen for the connection, when this connection occurs,it exposes the shell session so the atacker can execute the commands remotely .
-  `1024` is the port number which requirs root access or privilged permissions .
- Netcat is the one of the utility that will allow us to handle the connection and allow the attacker to interact with the exposed shell .
- Rlwrap is the small utility that uses the GNU readline library to providing editing keyboard and history .
- Ncat is the improved version of the Netcat distributed by the NMAP,it provides the extra fetures like the encryptions ssl .
- Socat is the utility that allows you to create socket connections between two data sources .
- The revese shell creates named pipe using mkfifo and connects to the attacker via Telnet on the `ATTACKET_IP`
- `PHP` reverse shell payload method is a common scripting language that uses the exec,shell_exec,system,passthru and the popen function to execturs commands remotely through TCP connection .
-  A web shell is a scrip written in a language supported by a compromised web server that executes commands through the web server itself . 
-  A web shell is usually a file containing the code that executes commands and the handles files .
- pown-Shell is the minimalistic single file php web shell that allow remote command execution .
- `b374k` shell is rich php web shell with the file managemnet and the command exection .
- c99 shell is robust php web shell with the extensive functionality .
- 



# Web Basic 
- URL stand for the uniform resource locator . It is a string of characters used to identify a resource on the internet .
- `Schema+user+host/domain+port+path+querystring+fragment`. 
- Schema are the protocol use to acces the website .
- `User` Some url include the user details  for the sites authentication . 
- `Host/Domain` It is the most important part of the URL it tells you which part of the website you are accesing . Every domain has to be unique and is registered through domain registerars .
- `Port` It is the number of the port where the website is hosted . It like the doorway to use for the communication . 
- `Path` The path points to the specific file or directory on the server .
- `Query` string is the part of the URL that provides additional information about the resource .
- `Fragments` Starts with the hash symbol (#) and contains the id of the element on the page .It helps to a specific section of the webpage .
- `typosquatting` is a fraudulent act of using a common or misspelled domain name to create a new one .
- 