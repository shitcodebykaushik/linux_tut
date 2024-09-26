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


# Logical Clock 
- Time means  to know the sequence of the event . 

# Scalabilty 
- IF the number request increase then the whether your server is going to response properly or not .
-  Vertical Scaling - It is means the upgradation of  the same server by making the configuration better . Single point of failure of there . Easy to configure
- Horizontal Scaling - It means that adding the new machine with the existing machine . Single point of failure is not there ,Secuity is tough .





# Redundancy (copy krna)
- It is simply duplication of the nodes or components so that when a node or componets fails then the duplicate node is available to service the customers .
- Active redundancy is considered when each unit is operating /active and responding to the action . Multiple nodes are connnected to a load balance,and each unit recives an equal load .
- Passive redundancy means that when one node is working and another one is not operational.

# Replication 
- redundancy+syncronization 
- Active where every nodes is accepting the request 
- Passive where every read write are done by the master .
- 

# Load Balancer 
- It is the process of efficient distribution of network traffic accros all nodes in a distributed system .
- VIP means virtual IP 
- We write the code in the load balancer to direct the request where to go .
- Load balancer ensure the high scalabilty,high trhrouhput,high availability .
- No need to use this in monolothic arch .
- We can use this in distibuted or microservice .
- Single point of failure is there to solve this issue we can use passive load balancer .
- Advantage
  - Optimization It helps in resource utilization .
  - better user experince  
  - Prevents downtime - It keep record of the server that are not functional .
  - Scalibility 
- Algorithm is left 

# Caching 

- It is fast and we use ram .
- Reduce the Api call .
- First we load the data from the DB then we define the caching .
- We can define the time limit of the caching .
- In caching there is no network call .
- IN MEMOERY/LOCAL
- DISTRIBUTED/IN HAND 
- When the app is read extensive then apply the caching  .

# Cache Eviction Strategies 
- TTl time to live
- Approx we give 4hr timing . As we miss this time  then we go to db to fetech the data ,
- Deleting of the caching  is known as cache eviction .
#  File based storage system

- A file-based storage system is a databse sustem where data is stored in the form of files .
- Challenges
 - Data Redundancy 
 - Poor security 
 - Slow 
# RDBMS
- It is software that perform the opeartiona on relational data base and store the data in the table . The relationship is maintained using the foreign key .
- No data reduncy and incosistency
- Data concurency
- Data integrity 
- Data searching 
- Problem 
 - Rigid schema
 - High cost 
 - Scalability issue
# NoSQL
 - It is a non-relational database .
 -  It is the umberalla term comprising of four different types of database .
    - Key value db - These types of db is used for caching eg . reddis .
    - Document  db - It combine the edbms and no sql .Mongodb
    - columnar db - columns are stored togrther instead of rows  casandra .
    - Graph db - In the form of graph stucture  used for social netowrk .

# Synchronous Communication 
- It is known as the blocking call .
- When you wait for procees to finish then only you can move to the next one is called synchronous .
- In this everythings happens at the sequenstial process .
- We use this to achive high constiency .
- We use this in transcation platform .
- Stock market ticket booking real Bank payemnt  time decision making.
- Real time things nedd to be sync.
# Async communication 
- It is known as non blocking call .
- In this we dont wait for other function complete exection .
- Computation takes lot of time .
- Scalability of application .
- Avoid cascading failure .
# Message based communication 
- Clients sends the request in the form of message 
- Prodcuer Those who sent the request .
- Consumer Those who receive the request .
- Agent is the channel between producer and communication .
- P2P model is based on the ques
- Publish subcribe Model achived by the kafka and Rabiit MQ .

# Web Server
 - Tools or program that helps to keep the web application always up and running  .
 - It can be software/hardware or both working together  .
 - It store the file to serve the file .
 - It connect to the network and support the physical data transfer .
 - HTTP SERVER is software part that understnd the URL and HTTP .
#  Communication protocol
 - These protocol can be implemented using harware software or combination of the both .
 - PUSH -> The client pushes new event to the client this method reduces the server load .
 - Pull/Polling  -> Here client requesst and server responds .
 - Long Polling  -> clint request ,server keep it open until it give response.
 - Socket  -> Here we need frequent connection . Here we make two way  connection channel .
 - Server sent events Similiar to push .

# Authentication vs Authorization 
 - Authentication  Who are you? LOgin cred
 -  Authorization   What can you do given permission .
# Token based authentication 
- In this token expire after some time .
# Oauth  authentication
- Third party as auth .
# Forward Proxy 
-  A hardware of software that is placed between a client and an application to provide intermediary service in the communication .
- It provide gateway in the forward and backward 
- There are two proxy 
 - Forward 
 - Revers Proxy 
 - Instance means specofic occurance of the class or the object .




















































