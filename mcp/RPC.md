# RPC 
- RPC is when your program calls a function that is running on another computer,but it looks like a normal function call in your code . You write code like result = add (10,5) but the function add() actually runs on another computer server .

- RPC make the remote communication easy , here you dont need to write code for opening sockets sending messager encoding data and reading response .
- Local function call is slower but the remote function call is slower which developer need to keep in mind .

- Procedure (subroutine ) In computer programming, a function is a callable unit of software logic that has a well-formed interface and behavior and can be invoked multiple times. 

- RPC are a form of inter-process comminocation (IPC) in that different process have differnet  address spaces .if on the same host machine they have distince virtual address spaces,
# Communication
-  In RPC we call a function on another machine . The server exposes procedure/function/methods . RPC mindest is to call this function and get the result .
-  In rest we access resource using URLs. the server exposes resources not functions .Rest mindest access or modify this resource using HTTP verbs .
#   DATA FORMAT 
-   Data format  are often binary and faster example protobuf thrift and msgpack
- Data format is usually JSON or XML over plain HTTP .

- url/endpoint style 
-  RPC endpoints look  like function calls 
- REST endpoints look like resources .


- RPC is a request-response protocol . A RPC is initiated by the client which sends request message to known remote server to execute a specified procedure with the supplied parameters. The remote server sends a response to the client and the application continues its process ,the server is processing the call. The remote calls can fail because of unpredicatable network problems .

# Clustered file system 
- This is the file system which is shared by being simultaneously mounted on multiple servers .
- Mounted on multiple server means many server can access the same shared filesystem at the same time as if it were part of their own local storage .
- Mounted means attaching a storage device to your computers so you can use it  .`Mounted = connected and ready to use.` 

# Shared-disk file system 
- It uses  a storage area network to allow multiple computer to gain disk access at the block level(Physical level ) .

# Distributed file system 
- This does not share block level access to the same storage but uses a network protocol . These are commonly known as network file system,even though they are not the only file system that use the network to send data . 

- Distributed computing is a field that studies distributed system,defined as computer system whose inter communication  componenets are located on different network computers .
- In distributed system evenets represents a fact or state change (e.g orderplaced ) and are typically broadcast asynchronosly to multiple consumer,promoting loose coupling and scalability . 
- While events dont expect an immediate response,acknowledgement mechanism are often implemented at the infrastructure level rather than being an inherent part of the event pattern itself .


- `Event` = messsage saying something happend and they expect a reply. Delivery confirmation is done automatically by the messaging system nnot by you .

- `Message` Means information sent from one system to another .

-  Delivery patterns for both events and message include publish/subcribe (one to many ) and point to point  (one to one ) . While request.reply technically possible it is more commonly associated with the messaging patterns rather than pure event-driven system . EVents excel at state propagation and decoupled notification while message are better suited for command execution workflow orchestration and explicit coordination .Modern architectires commonly combine both approcaches,leveragin .