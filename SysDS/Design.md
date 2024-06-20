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
