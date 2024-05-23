# Day 1

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

# Encapsulation 
-  The header added by the Network Layer would include things like the source and destination IP addresses.

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
- Oreos open -source .tmux.conf file 


