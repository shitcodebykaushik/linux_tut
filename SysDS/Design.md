# What is system design 
- It is the process of designing the elements of a system such as the architure,modules,and components,the different interfaces of those components and the data that goes through the system .

- LLD It stand for the low level design . Describe the design of each element mentioned in the high level design of the system
- HLD It stand for the high level design .It describe the main components that would be developed for the resulting product . The system architutre details ,databse design and service and the process the relationship betwenn various modules .
# Monolothic Architure 
- Architure means the internal deign details for building the  application .
- When the frontend backend and data storage are written together and deployed together are known as the monolothic . All the functionlaities must be in single codebase ,It is easier to understand as the things are the centralized system ,integration testing is easy and less confusion is less . There is less network call which reduce the latency . IF there is single bug in any module then the entire moducle can be destroyed . There is need to update the whole module to change the basic things and nedd to deploye again . And for the chamge in the single programming lamguage you meed to update the whole . Scalability and single code failure is main issue here .
- Website are the static content. Read only method is here . 
- Webapplication are the dynamic content . Read and write both are available .
- Here we have process to process call .
# Distributed system 
It is the collection of the multiple individual system connected through a network that share the resource,communicate and cordinate .
- One point of the failure is achived ,
- Scalabity is there horizontoly .Means we can add more machine to distribute the task.
- Coplexity is there .
- Difficult to secure .
- Node are the server .
- Loss of the data .
# Latency 
- Total time taked for the +netowrk +request+response+computational delay is the latency .
- Monolothic have only  computational delay .
- Distributed  will have the computational +network delay .
- To reduce the latency we have caching . Caching is process for the storing information for a set period of time on the computer .
- To reduce the latency we have CDN . These are the geographically proxy networks and their objective is to serve content to users more quickly .
- Or we can upgrade the server to decrese the latency .

# Throughput 
- It is the volume of work or data flowing through the system .
- It is amount of data transmitted per unit time .
- It is measured in the bps .
- It is more in the distributed system as we use load balancer here . Load balancer reduce the request by distributing them with the other maching using round and robin .
- It is less in MONOLthic .
- CDN ,CACHING DISTIBUTED SYSTEM .

 
# Availability 
- Monolothic have less availibilty. As the system go down the module go downs. 
- Distibuted have more availibity as we have the replicaia here .
- Fault tolerence is directely proptional to availiabilty ,
- To increas the avaialibity we can do replication of the server  ,ds,redundancy .
- Replication include the redundancy but involves the copying of data from the one node to another or the syncrinization of state between node .
- Redudancy is the duplication of nodes in case of some of them are failing .


# Consistency 
- When more then one client request the sytem for all such requests it will be called when each client gets the same data,The data should be always be consistent,regardless of who is accessing it form whereever ,The DB should update it as soon as possible .
- The missmangement in the data is called dirty read .

- Factors to improve the consitency
 - Improving the network bandwith
 - Stop the read
 - Replication based on Distance aware strategies 
- Types of consistency
 - Strong constitency   When the system doesnt allow read operation until all the nodes with replicated .
 - Weak constinecy  There is no gurantee of any such things .
 - Eventual consitency Some users might recive the old data but eventualyy it will be updated soon .


# CAP THEORM
- It is always to possible to attain any two things .System designer need to selcet any two things at a time .
- This is because of dirty read data or consitency may need to send the data frequently . 
- C - consistency
- A - availiablity 
- P - partion toelrence 






























