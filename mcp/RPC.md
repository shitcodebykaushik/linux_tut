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
