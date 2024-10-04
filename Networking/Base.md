# Day 1
- We hide all the technical infrastructure from the end users not from the network researcher .
- Packets are the building blocks for the networking communication . It allows for seamless communication over the network .
- Port scanner is software application program that scans a server or network for the open ports .
- Port 20 (UDP) — File Transfer Protocol (FTP) for data transfer
- Port 22 (TCP) — Secure Shell (SSH) protocol for secure logins, FTP, and port forwarding
- Port 23 (TCP) — Telnet protocol for unencrypted text commutations
- Port 53 (UDP) — Domain Name System (DNS) translates names of all computers on internet-to-IP addresses
- Port 80 (TCP) — World Wide Web HTTP
 The OSI model is use to demonstrate the theory behind the computer networking .
 In practise it more compact TCP/IP model that the real worls is based on .
  The osi model consist os the following parts .
   - Application
   - Presentation
   - Session
   - Transport
   - Network 
   -  Data LINK
   - Physical 
- Layer 7 -- Application:

The application layer of the OSI model essentially provides networking options to programs running on a computer. It works almost exclusively with applications, providing an interface for them to use in order to transmit data. When data is given to the application layer, it is passed down into the presentation layer. `HTTP AND FTP WORK ON THIS LAYER`

- Layer 6 -- Presentation:
The presentation layer receives data from the application layer. This data tends to be in a format that the application understands, but it's not necessarily in a standardised format that could be understood by the application layer in the receiving computer. The presentation layer translates the data into a standardised format, as well as handling any encryption, compression or other transformations to the data. With this complete, the data is passed down to the session layer.

- Layer 5 -- Session:

When the session layer receives the correctly formatted data from the presentation layer, it looks to see if it can set up a connection with the other computer across the network. If it can't then it sends back an error and the process goes no further. If a session can be established then it's the job of the session layer to maintain it, as well as co-operate with the session layer of the remote computer in order to synchronise communications

- Layer 4 -- Transport:
Its first purpose is to choose the protocol over which the data is to be transmitted. The two most common protocols in the transport layer are TCP (Transmission Control Protocol) and UDP (User Datagram Protocol); with TCP the transmission is connection-based which means that a connection between the computers is established and maintained for the duration of the request. This allows for a reliable transmission, as the connection can be used to ensure that the packets all get to the right place. A TCP connection allows the two computers to remain in constant communication to ensure that the data is sent at an acceptable speed, and that any lost data is re-sent. With UDP, the opposite is true; packets of data are essentially thrown at the receiving computer .over TCP these are called segments, over UDP they're called datagrams

- Layer 3 -- Network:

The network layer is responsible for locating the destination of your request.
Logical address is the (IP address) controlled by the software .
Logical address is use to provide orders to the networks categorising them and allow us to properly sort them .


- Layer 2 -- Data Link:

The data link layer focuses on the physical addressing of the transmission. It receives a packet from the network layer (that includes the IP address for the remote computer) and adds in the physical (MAC) address of the receiving endpoint. Inside every network enabled computer is a Network Interface Card (NIC) which comes with a unique MAC (Media Access Control) address to identify it.

MAC addresses are set by the manufacturer and literally burnt into the card; they can't be changed -- although they can be spoofed. When information is sent across a network, it's actually the physical address that is used to identify where exactly to send the information.
# Defensive Security  (Blue Team)
- Offensive security means that focuses on the breaking into systems .
- Breaking into the sytems are achived thorugh exploiting bugs abusing insecure setup and taking the advantage of unenforced access control policies  among other things .
- At defensive we are supposed to protect the system from the attack .
  -  Firewall control what network traffic can go inside the network .
  -  Ips block any traffic that matches present rules and attacks signatures .
- Processing the data aims to arrange them into a format suitable for analysis .
 - Digital Forensics and Incident Response (DFIR) 
  - Forensics is the application of science to investigate crimes and establish facts .
  - An incident always refers to the data breah . 
  - Malware stands for the malicious software . software refers to the program .
  - Virus is a piece of code (part of a program) that attaches itself to a program. 
  - Trojan Horse is a program that shows one desirable function but hides a malicious function underneath .
  - Ransomware is a malicious program that encrypts the user’s files.  
- There are many open-source database  out there ,like AbuseIPDB and Cisco Talos intelligence where you can perform a reputation and location check .
 # Careers in the Cyber 
 - Security analysts are integral to constructing security measures across organisations to protect the company from attacks. Analysts explore and evaluate company networks to uncover actionable data and recommendations for engineers to develop preventative measures .
 - Security engineers develop and implement security solutions using threats and vulnerability data - often sourced from members of the security workforce
 - Incident responders respond productively and efficiently to security breaches.  
 - Be the pentester .
# NMAP 
- It is one of the best tools available for the network  discovry .
- It is used by the millions fucker in the world . So you along with me are the shitt .
- Nmap stand for the network mapper .
-  Nmap used the raw packets in novel ways to determine what hosts are available on the network and what services they are offering what OS they are running what type of the packets are in the use .
- The output of the NMAP is a list of the scanned scanned services and the  most important things among them are the intersting port table . Which contains the information like port number and the service and the protocol,name ,state . Each state have the different name and  
 - `Open` stands for the  application on the target machine os listening for connections/packets on that port .
 - `Filtered` means that the firewall and the other network obstacles are blocking the ports so that nmap cannot tell whether it is open or closed .
 - `Closed`ports means that no application is listening on the port .
 - Everything on the Nmap is the comandline . The simplest case is  to specify the target IP address or the hostname for scanning . 
 -  When we provide the hostname then it is resolved via Domain Name system  to determine the IP address and the scanning will happen on the first one . To scan all the port we use the command `--resolve-all`
 - NMAP used the CIDR notation to scan whole networks .
 -  Nmap accepts multiple host specifications on the command line and they dont need to be of the same type .
 - By default Nmap will discover your DNS server from your resolv.conf file or the registry.
 - Host discovery 
    - -sl (List scan)
    - -sn (No port scan)
    - -Pn (No ping) This options will skips the host discovery stage altogether .
    -  - PS (TCP SYN Ping) In this Nmap does not care wheather the port is open or closed ot will send the empty tcp packet to the target with the SYN flag and theThe SYN flag suggests to the remote system that you are attempting to establish a connection. Normally the destination port will be closed, and a RST (reset) packet sent back. If the port happens to be open, the target will take the second step of a TCP three-way-handshake by responding with a SYN/ACK TCP packet. The machine running Nmap then tears down the nascent connection by responding with a RST rather than sending an ACK packet which would complete the three-way-handshake and establish a full connection. The RST packet is sent by the kernel of the machine running Nmap in response to the unexpected SYN/ACK, not by Nmap itself. 
    - -PA  This is similar to the syn ping but here we use the tcp ack ping . 
       The reason for using the both the ack and the syn is to maximize the  bypass of the firwalls .
      - Another common type of the of the firwalls uses statefull rules that drop the unexpected packets. It solution is simple to use the both the rule to pass the firewalls. 
     - PU  is the another host dicovery option in the Udp ping which send the a udp packets to the given port . 
     - -Py options send the sctp packet containing the minimal INIT chunk . Normally the destination Port is closed and an ABORT chunk will be sent back to if the ports happen to be the open then the target will take the second option of the init-ack chunk .
     Nmap doesnt care wheather the port is open or closed .
     -  The only barrier to port scanning is the mastery of the knowledge of the all tools .
     -  All of the insights of the nmap are based on the packets returned by the target .
     - Most of the tyme we can perform any of the one method of the scannig .
      - UDP scan (-sU) and any one of the SCTP scan types (-sY,-sZ) can be combined .
      - `-sS` (tcp syn) is the default and the most popular scan for the good reasons .
      - `-sT` (tcp connect scan )  TCP connect scan is the default TCP scan type when SYN scan is not an option. This is the case when a user does not have raw packet privileges. Instead of writing raw packets as most other scan types do, Nmap asks the underlying operating system to establish a connection with the target machine and port by issuing the connect system call. 
      - `-sU (UDP)`UDP scan is activated with the -sU option. It can be combined with a TCP scan type such as SYN scan (-sS) to check both protocols during the same run. 
      - `-sY (SCTP INIT scan)`SCTP is a relatively new alternative to the TCP and UDP protocols, combining most characteristics of TCP and UDP, and also adding new features like multi-homing and multi-streaming. This is ofent regarded as the half opening .

      - `sF ,-sX (tcp NULL FIN AND xmas scans)` These are the three scan type that exploits a subtle loophole in the TCP RFC to differentiate between open and closed ports .
      - `sA (TCP ACK scan)`  It never detemines the open ports  It is used to map out firewall rulesets, determining whether they are stateful or not and which ports are filtered. 
      - `-sW` This is for the window scan and it is same like ACK .
      - `-sM` This is 
      - `sZ` This is the more advance sctp scan .
      - `sO` This is the ip protocol helps you to determine which ip protocols are supported by the targeted machine  . Protocol scan works on the similiar fashion to Udp scan .
      - `-b` This allow user to connect one FTP server, then ask that files be sent to third-party server. Such festures are the ripe for the abuse to the many levels .
      - By default Nmap will scan the random number OF first 1000 ports for each protcols. 
      - We cabn scan combintion of the protocol Udp and the tcp .
      - `F` this reduced the number of the ports scannig from 1000 to the 100 .
      - `r` By defult nmap randomized the scanned port order but with the help of this we can fix the sorting of the scanned .
      - `--port-ratio` scans all ports in nmap -service file with a ratio greated than the one given must be between 0.0 and 1.0 .
      - `top-ports` Scan the <n> highest ratio ports found in the namp-servoce file after excluding all ports .
      -  Version detection interrogates those ports to determine more about what actually runnig .
      -  When the RPC servie are discovered .RPC grinder is automatically used tod determine the rpc program . 
       - `-sV (Version detection)`  Enable the version detection .
       - `--allports (Don't exclude any ports from version detection)`
       - `--version-intensity <intensity> (Set version scan intensity)`
       - `--version-light (Enable light mode)` 
       - `--version-all (Try every single probe)` --version-all (Try every single probe) .
       - `--version-trace (Trace version scan activity)` Nmap to print out extensive debugging info about what version scanning is doing .
- `OS detection` One of Nmap's best-known features is remote OS detection using TCP/IP stack fingerprinting. Nmap sends a series of TCP and UDP packets to the remote host and examines practically every bit in the responses. After performing dozens of tests such as TCP ISN sampling, TCP options support and ordering, IP ID sampling, and the initial window size check, Nmap compares the results to its nmap-os-db database of more than 2,600 known OS fingerprints and prints out the OS details if there is a match. 
   - `-O (Enable OS detection)`
   - `--osscan-limit (Limit OS detection to promising targets)`
   - `--osscan-guess; --fuzzy (Guess OS detection results)`
   - `--max-os-tries (Set the maximum number of OS detection tries against a target)`
-  Most imporatant thing which we do is with the NMAP is find the live computers . 
-  The second things is about finding the live services . 
-  Trying to scan network in the offline mode creates the unnecessary  noise .
-  There are different approcahes used by the NMAP to discover the live hosts .
   - ARP scan This scan uses the ARP request to discover the services .
   - ICMP scan This scan uses the ICMP request to discover the services .
   - TCP/UDP ping scan : This scan sends packets to the TCP/UDP ports to determine the live hosts .
- The  nmap goes through the  9 steps to give the final result .
   - Enumerate the target 
   - Discover live  hosts 
   - Reverse-DNS llokup 
   - Scan ports
   - Detect versions
   - Traceroute 
   - Scripts 
   - Write Outputs 
- A `network segement` is a group of computers  connected using shared medium .
- The network segments refers to the physical network and the while the subnetworks refers to the logical connection .
- A subnet has its own IP address and is connected to more extensive network via router , 
- Arp is link layer protocol and ARP packets are bouund to their subnet . 
- Nmap  default is to reverse DNS online hosts . By default NMAP uses the online hosts .
- If you want to use a specific DNS server, you can add the `--dns-servers DNS_SERVER` option. 
- You can use the option `-R` to query the DNS server even for offline hosts.
-  These are the few important things .
   - Link Layer 
      - ARP,Ethernet (80.3) WIFI (802.11),DSL,Bluetooth .
   - Netowrk Layer 
      - IPv4,ICMP,IPv6,IPsec .
   -  Transport layer 
      -  tcp,udp 
   - Application layer 
      - HTTP, HTTPS,SMTP,Telnet,SSH .
- A remote server refers to the computer system running continuously to serve the clinets.
- Injection attacks refers  to vulnerabilities in the web application where user can insert malicious code as a part of their input .
# Wireshark 
 - It is a packet analyzer that captured the packet data in as much detail as possible . It is a kind of the measuring device for examining whats happing inside a network cable .
 - It captures the data from the live network traffice and analyse it in the detailed overview. It filter the packets on the many cretiria .
 - Colorize packets display based on filters .
 - It is not an intrusion detection system. It will not warn you when someone does strange things on your network . It doesnt send the packets on the network or do orthe active things .
 - It can decode hundred of the different protocols .
 - Allow the precise filtering .
 - Drcode the various network protocol .
 - It helps to monitor the network traffic for sensitive data leaving the network ensuring the complience with the data protection regulations . `(DLP)`
 - It helps to  identify the violation of `AUPs` such as the unauthorized use of the bandwidth or to access the prohibited websites .
 - Helps to identify the traffic associated with the  malware such as the command-and-control or data exfiltration.
 - It helps you to know how the efficiently different protocol are being used.identifying potential area of the optimization .
 - `Bot` A bot in the context of cybersecurity is a compromised computer or device that has been infected with malicious software (malware) .
 - `Zombie` A zombie is a compromised computer or device that has been infected with malware and is now under the control of the botnet's operator.  
 - `C&C` It stands for the command-and-control and it is the channel of communication between the compromised computer and the attcker command-and-control server . The attacker use this channel to communicate with the compromised system .
 - Comprised means which has been successfully breached by the attacker .
 - `wireshark` This command will start the monitoring
 - `killall wireshark` This command will kill the running process  and will stop eveything .
# CEWL 
- Stands for the custom  wordlist generator. A tool used for creating  custom wordlist or dictionaries that can be used for password cracking ,phising attacks and the other types of security testing .
# Clang 
-  It is the cpmipler front end for the C language family. It is faster then the gcc .
 As of now i dont have to touch this section . Huh....
# Encapsulation 
-  The header added by the Network Layer would include things like the source and destination IP addresses.
-  Header contains the control information such as the source and the detination ,checksum (used for error detection), protocol identifier (specifies the type of the protocol used to encapsulate the data).
- Payload is the actual data or message being transmitted  it can be anything from the text to image to video ...
-   The header added by the Transport Layer would include (amongst other things) information specific to the protocol being used .
- The data link layer also adds a piece on at the end of the transmission, which is used to verify that the data has not been corrupted on transmission; this also has the added bonus of increased security, as the data can't be intercepted and tampered with without breaking the trailer .

This whole process is known as the encapsulation . As the data is sent from the one computer to the another .

- Layer 7,6,5 here the data is simply known as the data.
- In the transport layer data is simply said as the datagram or segment .
- In the network layer data is simply said as the packet ,
- In the data link layer it is known as the frame.
- By the time it is transmitted accross the network it is broken down into bits .
 And when the data is received by the computer it reverse the process starting from the physical layer and woring till application layer ,this is known as the de-encapsulation .


 # The TCP/IP model
 It serves as the basis for real world networking 
 It consist of the four layer `Application,Network,Internet,Network Interface`.
 The processes of encapsulation and de-encapsulation work in exactly the same way with the TCP/IP model as they do with the OSI model. At each layer of the TCP/IP model a header is added during encapsulation, and removed during de-encapsulation.
 - TCP is the connection based protocol which means that you must established the connection before you send data via `tcp`.The process of forming this connection is called thress-way handshake .
  - Method to establish the connection 
 First your computer will send the syn bit then server will respond with the acl and finally your system will send the packet that contains the ACK bit itself .

 # Ping 

 The ping command is used when we want to test whether a connection to a remote resource is possible
 . Ping works using the ICMP protocol, which is one of the slightly less well-known TCP/IP protocols that were mentioned earlier. The ICMP protocol works on the Network layer of the OSI Model, and thus the Internet layer of the TCP/IP model. 


 # HTTP(S)
 HTTP is the set of rules used for the communicating with web servers for the transmitting of webpage data .
 HTTPS is the secure version of HTTP.HTTPS is the is encrypted so it not only stops people from seeing the data you are receiveing and sending ,but it also gives you assurence that you are taking to the correct web server and not something impersonating it  .
 
 - Request and Response 
 To access the assest we make request to the web browaer .
 -  A `URL` id predominantly an instruction on how to access a resource on the internet,
 - The URL goes in these sequence -> `Scheme://User@Gost//Domain:Port//Path?=//Query String // Fragments ` .
 Scheme: This instructs on what protocol to use for accessing the resource such as   - HTTP, HTTPS, FTP (File Transfer Protocol).

  - User: Some services require authentication to log in, you can put a username and
  - password into the URL to log in.

  - Host: The domain name or IP address of the server you wish to access.

  - Port: The Port that you are going to connect to, usually 80 for HTTP and 443 for   
  -  HTTPS, but this can be hosted on any port between 1 - 65535.

  - Path: The file name or location of the resource you are trying to access.

  
  - Query String: Extra bits of information that can be sent to the requested path. For example, /blog?id=1 would tell the blog path that you wish to receive the blog article with the id of 1.

- Fragment: This is a reference to a location on the actual page requested. This is commonly used for pages with long content and can have a certain part of the page directly linked to it, so it is viewable to the user as soon as they access the page.

Making request with the one line is also possible .
 `GET/HTTP/1.1` The request method/The HTTP Protocol Versions .

 - Content-Length: When sending data to a web server such as in a form, the content length tells the web server how much data to expect in the web request .

 - HTTP methods are a way for the client to show their intended action when making an HTTP request. There are a lot of HTTP methods but we'll cover the most common ones, although mostly you'll deal with the GET and POST method.

- GET Request This is used for getting information from a web server.

- POST Request This is used for submitting data to the web server and potentially creating new records

- PUT Request This is used for submitting data to a web server to update information

- DELETE Request This is used for deleting information/records from a web server.


- HTTPS Status code 
  - 100-199 -> It means that the request are accepted keep sendig the next part.
  - 200-299 -> It means that the client request was the suceesful .
  - 300-399 -> It means that the client request wad redirected to the other resource .
  - 400-499 -> It means that the client request contains some error .
  - 500-599 -> This means that the error is from the server side .
  - 200 -OK
  - 201 - Created
  - 301 - Moved Permanently 
  - 302  -Found
  - 400  - Bad Request 
  - 401 - Not Authorised
  - 403 - Forbidden
  - 405 - Method Not Allowed
  - 404 - Page not found 
  - 500 - Internal service error 
  - 503 - Service Unavailable 
- Headers 
Headers are additional bits of data you can send to the web server when making requests.
 There are the two different type of the headers 
  - Request Headers
    - Cookie: Data sent to the server to help to remeber your information.
    - Host : Some web server host multiple website so by provideing the name you can tell it which one you require ,else you will recevive the defualt one .

  - Response Headers 
    - Cache control It means that how long to store the content of the response in the browser cache befor ot request it again .
 

- HTTP is stateless means that it doesnt keep track of your previous request .
- SET-COOKIES are used to save cookies to your computer .

# DNS
Domain Name System   is the protocol responsible for resolving hostnames, such as tryhackme.com, to their respective IP addresses .
 - Domain Hierarchy
    - TLD (Top-Level Domain) A TLD is the most righthand part of a domain name.
      There are two types of the TLD ,gTLD (Generic Top Level) ,ccTLD (Country code Top level Domain)
      -  .com would be for commercial purposes
- Second-Level Domain
 When registering a domain name, the second-level domain is limited to 63 characters + the TLD and can only use a-z 0-9 and hyphens (cannot start or end with hyphens or have consecutive hyphens).
 -  And a full domain name can have a maximum of 253 characters.

 - DNS record Types
    - A Record These records resolve to IPv4 addresses, for example 104.26.10.229
    - AAAA Record  These records resolve to IPv6 addresses, for example 2606:4700:20::681a:be5 .
    - CNAME Record These records resolve to another domain name.
    - MX Record These records resolve to the address of the servers that handle the email for the domain you are querying,
    - TXT records are free text fields where any text-based data can be stored. 

- TTL is use to specifies how long a DNS record should be cached for .

- A Recursive DNS Server is usually provided by your ISP, but you can also choose your own. This server also has a local cache of recently looked up domain names. If a result is found locally, this is sent back to your computer, and your request ends here (this is common for popular and heavily requested services such as Google, Facebook, Twitter). If the request cannot be found locally, a journey begins to find the correct answer, starting with the internet's root DNS servers.

- The TLD server holds records for where to find the authoritative server to answer the DNS request. The authoritative server is often also known as the nameserver for the domain. 

- An authoritative DNS server is the server that is responsible for storing the DNS records for a particular domain name and where any updates to your domain name DNS records would be made. Depending on the record type, the DNS record is then sent back to the Recursive DNS Server, where a local copy will be cached for future requests and then relayed back to the original client that made the request. DNS records all come with a TTL (Time To Live) value. This value is a number represented in seconds that the response should be saved for locally until you have to look it up again. Caching saves on having to make a DNS request every time you communicate with a server.
# CyptoGraphy 
Without encrypton communicaton over the internet will be very insecure and it would be very easy for someone to see your data.

There are two types of cryptography :

- Symmetric In this both the user have the same key to encrypt the data .
- Asymmetric  In asymmetric cryptography the encryption and decryption keys are different. The encryption key can be used only for encryption, not for decryption and vice versa. The encryption key is called Public key and the decryption key is called Private key.

- Hashes are a long strings of letters and numbers generated by hashing algorithms. They take plain text and make it a hash.

- These two are famous hashing algorithm MD5 (Message Digest 5) and SHA (Secure Hash Algorithm).


- Encoded data can be decoded without the key .
- Encrypting  need a key to decrypt the data  . 
# Develop project related to the hash generator .


# Google Dorking 
Crawlers discover content through various means it acts as a virus and look for the data on thee internet .

# tmux
 - Tmux this will launch the tmux session in the system .
 - It is known as a terminal multiplexer . That allows you to craft a single terminal . 
 - tmux (short for terminal multiplexer) is a powerful tool that allows you to manage multiple terminal sessions from a single window. It is particularly useful for those who work extensively on the command line, such as system administrators and developers. With tmux, you can create, manage, and navigate between multiple terminal sessions easily.
 -The first session create will have the name "0" .By default tmux status bar will be green .With session name on the left .Tmux doesnt allow you to create the nested tmux unless you force it do . When running the tmux command a second time .
 - `tmux ls ` This will list all the sesiion on the current system .
 - `tmux new -s<new-session>-d` this will create the new session with the name according to your wish .
 - `tmux kill-session -t name pf tmuz session` This will kill the session .
 - tmux promt allows tmux session to run command withour the tmux binary name .
 - `ctrl b d` This will exit the tmux without closing the closing the session .

 - A session is a single collection of pseudoterminals under  the  manage-
       ment of .  Each session has one or more windows linked to it.  A window
       occupies the entire screen and may be  split  into  rectangular  panes,
       each  of  which  is  a separate pseudo terminal (the pty(7) manual page
       documents the technical details of pseudo terminals).   Any  number  of
       tmux  instances may connect to the same session, and any number of win-
       dows may be present in the same session.  Once all sessions are killed,
       tmux exits.

       Each  session  is  persistent and will survive accidental disconnection
       (such as ssh(1) connection timeout) or intentional detaching (with  the
       `C-b' d key strokes). tmux may be reattached .
       `ctrl +b` First click this combo then use any prefix key to run the tmux properly.
- Tmux panes are use to divide the current session into multiple-sized terminal.It allow to run the multiple commands to run within the same session window.
- Prefix means any words at the end of the word .

- Tmux windows are like a new session tab you can easily swap and more .
- To create new emoty tmux window we use the the prefix -c .
- Tmux doesn't have the configuration file ,that doesn't mean you can't make the new one .
- `Tmux show -g` It will show the list of all the list of file in one shot .
- When creating the tmux configuration script is important.
- The file name is `.tmux.conf` and `.tmux.conf` is saved within the users home direcotory ` /home/username/.tmux.conf.
- ` ctrl b shift ` This will split the horizontally .
- ` ctrl b ` This will split the vertically .
+ We can set the limit of the history  allow copying mode to have higher max character limit .

- `ctrl +b  shift+% ` This will split the terminal into two parts .
- `C-B` stands for the ctrl +b and them we can use the up and down key to move the terminal as per our works .
In the all terminal our work will be totally different  .
-`C-B` then Q will display the index of the terminal . 
- Oreos open -source .tmux.conf file 


# PwnTools 
It is designed for the rapid prototyping and development and intented to make exploit writing as simple as possible .
Pwndgb printsout the usefull information such as registers and assembly code with each brealpoint or error.
- GDB plugging makes GDB suck less.
# Understanding the importance of the reconnaissance 
-  The first chain of the cyber kill chain is the reconnaissance within their target organizations .
- Reconnaissance stands for the information gathering .
- `Passive:` Uses an indirect approcah and does not engage the target machine 
- `Active:` Directlly engages the target to gather specific details .
- Footprinting is the process of gathring information as much as it can be . In the footprinting main objective is to obtain the specific details about the target ,it helps us too understand the infrastructure of the and helps to identify the security vulnerabilities of the target machine.
- Sock puppet means to create the fake identity of the people to gather the information .
- Theire are few tools that can be used by the penetration tester to anonymize their traffic 
   - VPN allows a user to send the data to securely across an insucure network such as internet . For example you need to use a tool to perform a scan on a target server on the internet but you do not dont want your target machine to know the actual traffic ,using vpn server is located in another country can be beneficial to you .

   - `Proxychains`  A proxy is system server such as a server that sits between a source and destination host on network . 
   - The onoin Router (TOR)
# Pipleine 
In the pipeline our end product is deployed at the Environement .
- Source code and version control is the start of our pipleine .
- Furthermore, we often want to keep several versions of our code since we are continuously making improvements and adding features.
- There are lot to think about where to store our code ,As if now my prefernce is `GIT` as it is distributed system meaning that each contributor will have their own copy of the source code . As in central system the  repo is managed by the centrally .
- Source code cannot be fully secret since developers need access to it. As such, we should be careful not to confuse source code storage with secret management. We need to make sure not to store secrets, such as database connection strings and credentials, in our source code. Since we keep all versions of our source code, even if we remove the secrets in a newer version, they will still be exposed in the previous versions.
- There is a saying: "Git never forgets". Code is "committed" to a Git repo. When this happens, Git determines the changes made to the files and creates a new version based on these changes. Any user with access to the repo can look at historical commits and the changes that were made.

- Gitty leaks is use to scan  the commit of a repo for sensitive information .

- `Dependicies`
The truth is that only the tip of the iceberg we are writing in our dev-environemnt,this is because a lot of code has been already written  for us in the form of libraries and SDK,Even the variables like string in an application have an entrie library behind them ! The mangement of these dependicies are the vital party of the pipleline . 

`External Dependicies` These dependicies are publicly available librairies and SDK ,these are hosted on the external dependency manager as `NuGet` for the `.NET`
`Internal Dependicies ` These are the dependices are librairies and SDK that an organisation develops and maintain internally ,these library are used for all application developed by the organisation .
- Dependency manger are the commonly known as the `package manager` .

- The management of internal dependencies is a bit more tricky. For these, we can use tools such as JFrog Artifactory or Azure Artifacts to manage these dependencies.

- `Testing`
 In old days testing was mannual ,these days most of the testing is being done with the modern piplenes ,auotmation .

   - Unit test 
    - When talking about automated testing in a pipeline, this will be the first type of testing that most developers and software engineers are familiar with. A unit test is a test case for a small part of the application or service. The idea is to test the application in smaller parts to ensure that all the functionality works as it should.
    - In modern pipelines, unit testing can be used as quality gates. Test cases can be integrated into the Continuous Integration and Continuous Deployment (CI/CD) part of the pipeline, where the build will be stopped from progressing if these test cases fail. However, unit testing is usually focused on functionality and not security.
  - Integration  Testing 
    Another common testing method is integration testing. Where unit tests focus on small parts of the application, integration testing focuses on how these small parts work together. Similar to unit tests, testing will be performed for each of the integrations and can also be integrated into the CI/CD part of the pipeline. A subset of integration testing is regression testing, which aims to ensure that new features do not adversely impact existing features and functionality. However, similar to unit testing, integration testing, including regression testing, is not usually performed for security purposes.
  - Security Testing 
    - `SAST` This stand for the Static Appliction Security Testing . works by reviewing the source code of the application or service to identify sources of vulnerabilities.This can be integrated in pipeline as the security gates,preventing the pipline from continuing if the SAST tool still detects vulnerbilities that have not been flagged as false positive .
    - `DAST`  Dynamic Application Security Testing (DAST) is similar to SAST but performs dynamic testing by executing the code. This allows DAST tools to detect additional vulnerabilities that would not be possible with just a source code review. 
    - Penetration Testing is bap of all these test case  as it manual testing which are so crucial for large production stuff .

- Continous Integration and Delivery
Initially CI/CD  was called continous integration and development as the part of the Agile method but the deploymet was done using the WaterFall method .But these things have changed in the recent year . Now industry say that it is fully based on AGILE method called CI/CD as continous Integration and Continous Delivery .
  

- When we build new features  for our system or service we ensure that these features will work with the cureent application .
Insted of adding this in the last  development cycle we can now continously integrte new fetures and test them as they are being deloped .
- There are few distinct elements that are the part of the each CI/CD .
Starting Trigger - The action that kicks off the pipeline process. For example, a push request is made to a specific branch.
- Building Actions - Actions taken to build both the project and the new feature.
- Testing Actions - Actions that will test the project to ensure that the new feature does not interfere with any of the current features of the application.
- Deployment Actions - Should a pipeline succeed, the deployment actions detail what should happen with the build. For example, it should then be pushed to the Testing Environment.
- Delivery Actions - As CI/CD processes have evolved, the focus is now no longer just on the deployment itself, but all aspects of the delivery of the solution. This includes actions such as monitoring the deployed solution.

These are the part where the larget automation happens .
- Dev means development 
- Prod means production
- build orchestrators control the builds 
-  build agent it is the build infrastructure elemnts that performs the build .

- Each pipeline have the several environement and each of them have their specific use case .
- `Dev Development` This is the playground for developers ,this is the most unstable as developers are continously pushing code .This is wealed zone .
- ` UAT` This means User Acceptance Testing it is use to test the application before it is sent for the production . This is the second weakest zone .
- ` PreProd - Pre-Production ` This is the most senstive zone here ther is no need to update any change in the system . It may containe the customer data .
- ` DR/HR` . This is often used for critical applications such as Online Banking, where the bank has to pay large penalties if the website goes down. In the event where some (but still small) downtime is allowed, the environment is called a DR environment, meant to be used to recover from a disaster in production. DR and HA environments should be exact mirrors of PROD in both stability and security.
- Developer Bypasses is a common class of vulnerabilities that is discovered in PROD due to insecure code creeping in from DEV.
 - A staging environment mimics the production environment to perform final QA checks on application. A test environment validates each component of application under test. It is dynamic and requires specific configurations to test each component.


  
 # HTTP Request Smuggling

It is a vulnerability that arises when there are mismayches in different web infrastructure component .
This includes the proxies,load balancer and servers that interpret the boundries of HTTP request .
HTTP pipeling allow multiple request to be sent over the same TCP connection .
It is important to calculate the size for Content- Length (CL) and (TE),it os crucial to considered the presence of the carriage return`\r` and newline character `\n`.
- Front end server . This is usually the reverse proxy or load balancer that formwards the request to the back end .
- Back end server  This is server side component that process the user request ,interacts with the database,and serve the data to the frontend.
- Database It is the presistent storge system where application  data is stored .
- API (Application Programmable Interface ) Interface that allow  the frontend and backend to communicate and integrate with the other service .
API, which stands for Application Programming Interface, is a set of rules and protocols for building software and applications. An API allows different software programs to communicate with each other. It defines methods of communication between various components, including the kinds of requests that can be made, how they're made, the data formats that should be used, and conventions to follow.
- Microservice Instead of single monolithic back end ,many modern application uses microserves which are small independent service that communicate over network ,often using HTTTP/REST or gRPC .
- `Load Balancers`  These device or service distribute the incoming network traffic accross multiple servers to ensure no single server is overwhelmed with too muuch traffic .This distribution ensures high availability and reliability by redirecting requests only to online servers that can handle them. Load balancing for web servers is often done by reverse proxies. Examples include AWS Elastic Load Balancing, HAProxy, and F5 BIG-IP.

- `Reverse proxies`  primary purpose is to provide a single access point and control for back-end servers. Examples include NGINX, Apache with mod_proxy, and Varnish.

- `Caching` It is a technique used to store and reuse the previously fetched data or computed results to speed up subsequent request and computation .
In the context of web infrastructure .
- `Content caching` By storing web content that doesn't change frequently .
- `Database Query Caching ` Databases can cache the results of frequent queries, reducing the time and resources needed to fetch the same data repeatedly.
- `Full page caching ` Full page can be cached 
- `Edge Caching/ CDNs` Content Delivery Networks (CDNs) cache content closer to the users (at the "edge" of the network), reducing latency and speeding up access for users around the world.
- `API Caching ` Caching the responses can significantly reduce back-end processing for APIs that serve similar requests repeatedly.



# Subnetting
- The division of an address range of IPv4 address into smaller adderes range is called subnetting .
-  A subnet is the logical segment of the network that uses IP address with  the same network address . We can create a specific subnet by ourselves .
- IP address is divided into the network part and the host part .
  - Network address
  - Broadcast address 
  - First host 
  - Last host
  - Number of hosts 
     
- Port is software based construct that serves as a communication .
- It is virtual  points where network connection begin and stop,controlled by the os .
-  Each ports are connected to the different procedure or service which allow computer to differentiate  between various types of network traffic .

# Metasploit 
 - It is a framwork .
 - It contains the ready made tools and scans which helps to get easy reverse shells  .
 - Be carefull because there machine where 

- Lab setup
- Remember you need to control the threats from the internet person .  We are the penetration tester  and we have the skills of the hacker  to performt he real-world cyber attacks on the organization to perform the  simulations of things .
- Cyber Kill chain framework is secutriy defense model to identify and the describe the stage of the cyber attack from the initial reconnaissance to the data exfiltration . 
- Ransomware is a the crypto-malware designed to compromise the vulnerable systems. Once the system is infected with the ransomeware ,it will encrypt all the data within local drives except the operating system . It also have the capabilities of also compromising any cloud storage that is linked to the infected device .
-  Vulnerability analysis typically involves the assessors or pentestor testers running vulnerability or network/port scans to better understand which service are on the network or the applications running on a system and wheather there are vulnerbilities in any system included in the scope of the assessment,this process often include manual vulnerability discovery and testing which is often the most accurate form of vulnerability analysis or vulnerability assessment .
- In the virtual system we are unable to use FAT32 partition since large files are not supported in the that filesystem . Due to which we need to choose the NTFs,ext3 or some other filesystem formate . The recommended amount is 30gb .
- 64-bit quad core CPU is good for it  .
- Never expose Metasploitable  to an untrusted network use NAT or Host-only mode ! .
- Metasploits is written in the Ruby . 
-  Metasploit is provided in the metasploit framerwork pacakge and is installed in the `/usr/share/metasploit-framework directory.`
- The MSF filesystem is laid out in an intutive manner and is organized by directory .
- The data directory contains editable filed used by Metasploit to store the binaries required for cetain exploits  wordlist images and more .
- The documentation directory contains the available documentation for the framework . 
-  The term `"module"` in cybersecurity denotes a self-contained unit that either provides a specific security function, constitutes a part of a cybersecurity framework, or refers to a dedicated cryptographic component. They are fundamental for building effective and manageable security solutions, as well as for organizing and imparting cybersecurity knowledge.
-  The `lib` contain the meat of the framwork .
- The `module` contain the  the actual MSF module for exploits auxiliart and post module payloads encodets and non genetors .
- `plugins` contains the usefull plugin of the metasploit .
- The `scripts dir` contains the Meterpreter and the other scripts . 
- The tools` directory contains the useful commands utilities for the metasploit .
- Metasploit library containe the number of the MSF lib that allows us to exploits without having to write the additional code for the rudimentary  such as the HTTP request and the encoding of payloads .
  - `Rex` It handles the http smb ssl unicode teaxt transformation and handle the sockets . 
  - `Msf::Core`  It provides the basic API .
  - `Msf::Base`  It provides the friendly API . 
- Almost all  of your interation with metasploit will be through its many module which it looks into the two location , the primary module is store under the `/usr/share/metasploit-framework/modules/` and the second one is the home dir which is our custom `~/.msf4/modules/.`
- `Auxiliary modules` include port scanners and the fuzzers sniffers and more.

- `Payloads` consist the code that run remotely . While encoders ensure that payloads make it to their destination intaact . Nops keep the payloads sizes consistent across exploit attempts .
- Metasploit give you the option to load modules either at runtime or at after the msfconsole has been alredy been started . To add the additional module use the `loadpath` . 
- MSF architecture  
   - In this all modules are the ruby classes .
   - Modules inherits from the MSF:: Module class .
   - There are the shared common API 
  - Payloads are slightly different they are created at runtime from the various componetns .
  - Glue together with the stage .
- MSFconsole is probally the most usefull interface to the MetaSploit Framework . It provides the all in one centrailized console and allows you efficient access to the virtually all of the options available in the MSF . 
- msfconsole is lauched simply with the `msfconsole -q` .

- When virtual machine are run on the cloud then it is called `instance` .
-  The process of the gathring the information about the system  to identifu  and exploit the vulnerabilities . It give the collective knowledge to both the developers pentester and the shit .

- Nix tools are the cross-platform managers for the unix-like systens and tools to instantiate and manage Unix-like . 

- We use the `ip add` to see wheather the machine is the receu=iveing an IP address automatically from our network via bridge/ adapter. 
-  We can also check the connectivity with the  by using the ping command .
-   We can change the default password of the kali with the new password `passwd kali`.
-  We sholud always update the source and the package with the `sudo apt update` .
-  `AMD64` is the 64 bit architecture of the kernal . It is the capable of performing the most secure computation and powerful computation .
- OWASP stands for the `open web application security project` .  It is the organization that focuses on the improving the  security of the web application . 
- OWSAP juice shop and the OWSAP web Broken Web Application projects within our labs .
- Docker pretty good privacy  also know as the `docker pgp` key it is used to insure the authenticity and the integrity of the software packages and the container images .
-  Once the enitre metasploita is downloaded in the system them there will be need of the update system in the entire vm kali . So that it will be updated once in the row. 

- `cd metasploit-framework` here  you will find all the available things of the metasploits  available in the filesystem .
-  Then the next thing is to install the gem bundling . Ruby  gem bundling is a package manager that is designed to simlify  the process of managing dependencies for the ruby project .  The bundler reads the gem file (config file) and resolves the dependencies specified therin by ensuring that all the gems  are installed and at the correct versions . It similiar to the `NPM and Cargo` .
-  Once these things are done then its tym to intialize the metasspoilt database and run the command. `sudo msfdb init` 
- `msfconsole` This will launch the console of the metaspolit .
- Once these things are done  then chek the connection `db_status`
- While using this metsploit we primarly use the `msfconsole`.
- `Exploit` is a piece of the code that uses the vulnerability present on the target system .
-`Vulnerability` A design, coding or logic flaw affecting the target system. The exploration of a vulnerability can result in the disclosing the confential information .
- `Payloads` It is the code that will run on the target system this happen when we want to take the  advantage of the explot to have the result which we want to have .
-  `Auxiliary` All the supporting module such as scanner crawker and fuzzer can be found here.
- ` Encoder` This will allow you to encode the exploit and payload in the hope that signature-based antivirus solution may miss them .
- `Signature-Based` antivirus have the security solution have a databse of the knowm threats. They detect threats by compating the suspicious files to the database and raise an alert if there is a match .
- Encoder have the limited sucess rate as antivirus solution have .
- Exploits are the neatly organized by target system .
- `NOPs` (No Operation) do nothing literalyy.
- They are respresented in the intel x86 CPU family thay are represented with the 0x90,following which the CPU will do nothing for the one cycle . They are often uses as a buffer to achieve consisten payload size .
- `Payloads`  These are the code that will run in the trarget machine ,exploit will leverge a vulnerability on the target system but to achieve this we need playload .
    - Singles are the self contained payloads that do not need to download an additonal component to run .
    -  Stagers are responsible for the setting up the connection channel between mataspolit and the target machine .
    -  Stages are downloaded by the stagers this allows you to use larger sized payloads .
- `Post`  This module is usefull in the final stage of the pentesting .
- `Envaison` This is the module that is usefull to create the payloads that can evade anti-virus (AV) software on the target machine .
- Once the vulnerabilities has been successfully exploited, a session will be created this is the communication channel between the target system and the metasploit .
- `background or ctrl+z` This is use to background session .
- 