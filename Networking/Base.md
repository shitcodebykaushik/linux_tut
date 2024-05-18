# Day 1
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
 