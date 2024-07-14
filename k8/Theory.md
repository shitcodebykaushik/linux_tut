# API
- It is the standarized format for the conversation between the  different computer .
-  HTTP 1.1 
   - This is json and xml based
- Then HTTP 2

- Grpc 
 - This is based on the rpc and protbuf .
 - It is good in multiplexing means that it can do bidirectional talks .
 - Every protocol in the k8 works in the gRPC .
 - Internal component of the k8 works in the gRPC way .
- Rest
 - We talk to the component of the k8 in the RSET .   

# PODS
- These are the smallest deployable units of the container that you can create and manage in the k8.
- In k8 we have  two node .
 - Control Plane (Master Node) It is for the management only  have the five components in it . 
    - cloud - controller - manager 
    - kube-api-server  This is the most important part of the k8 . If this goes down then we can't do any thing . As the our entire  cluster goes down .
      - Parts of the this 
        - Authentication => It function as the security guard ,It checks the identity with the help of certificate and bearear token .It checks wheather it is part of theam or not .
        - Authorization => This is also known as monitor as act as Role based acces control . RBAC cheks the permision given to them .
        - Admission Control => Mutating Admission Controller => Mutate means it can change and it is the one of the dangerous change in the control as we give the power here and Once the nutating is done then we go for Object Schema Validaton  .Validatin  Admission controller  it goes to etcd .
        - Watch for update 
    - kube- schedular
      - Here we give the best pod .
        - Scheduing Cycle
          - Post filter kickout the worst pod .
          - Score Use to rank the node in the 
          - Reserve Here we will reserve the node .
        - Binding Cycle 
          - Here bind the pod .
    - kuber-controler-manager
       - He do multiple things .
       - It make sure the current state and state defined by  you  .
    - ETCD is the filesystem  and we use this as the database . This is crucial things of the k8 . database store the things . And here it is the NOSQl where there is no schema .  It uses the protobuf .
      - Distributes Key-Value Store
      - Protobuf
      - Data not Encrypted by default  there is no encryption of the data  in the etcd .
      - RAFT Consensus
      - WAL
    - Webhook it the light-weight callback function .

 
 - What is distributed consensus .
   - It is the process of the achiving agreement among the multiple nodes in a distributed system(Multiple nodes or process in network decide to agree on a value or decison ). The nodes agree on the single value . `https://thesecretlivesofdata.com/`





 - Worker Plane
  - Kube proxy works as daemon .
  - By default kube proxy is installed in every worker node .
  - Anything which are defined internally have the cluster IP and this is pvt ip RFC 1918 .
  - Kubelet works is to talk to the api server and to make sure container is running or not .
  - CNI => Container Network Interface it main work is to assign the ip tp the pod and node .
  - CRI => Containr Run Time it tells how our container run . CRI tells to runc to make container it never make by themselves . Runc(go-lang) tell to C-group (provide the isolation).
  - CSI => Constainer Storage interface . 
  - Every things go in the Queue in k8
- CRD => Custom resource defination which is use to extend the meaning of the object . Operator apply the CRD . It extends the functionallity of the k8 .
- K8 is the plugin based arch .Plugin means to add the predefined the things .
-  Static pods are pods created and managed by kubelet daemon on a specific node without API server observing them. If the static pod crashes, kubelet restar

ts them. Control plane is not involved in lifecycle of static pod. Kubelet also tries to create a mirror pod on the kubernetes api server for each static pod so that the static pods are visible i.e., when you do kubectl get pod for example, the mirror object of static pod is also listed.
- Always take the odd number of node for the production rason being of the highly available . 

 # Day 2
 - Observality => Tracing+Profiling+Monitoring+Logging combines together to form this . And this is known as the O||Y (oly) .

 - Big Query for the database warehouse .
 -  Always try to name the cluster with the matching to the project and team name so that it will be helpfull to recognise.
 - Brfore doing the nofr placement,do the dynamic routing then choose the location ,reason being it will help u to decrease the latency .
 - Release channel  should be the regular one as it will provide the stability .
 - Stability means backed by data which means that most of the company is using it .
 - Default pool 
   - Pool means no of cpu or gpu you need it  !
 - Try for the machine configuration for the N1 .
 - SSD for starting should be 1.
 KIND => Means K8 in the docker .    It is a command line interface that is built on the packages.
   - Kind create cluster --name kaushik // This is single node cluster .
   -  Tip :- Version of the worker node can't be the larger then master node .Because of the backward compatibilty issue.
   - `kubectl get nodes` This will return the number of the nodes available .  
  - Anything runnig on the K8 is pods.
  - Underlaying deployment is made of the pods .
  - Objects in the k8 are the pods ingress and services .
  - Components are the master node and slave node .
  - kubctl is the command line utility .
  - kind ,kubedemon,Minicube are the cluster creation things .
  - Image are the code,runtime,syslib and running instance of the of the application and the main reason is portability .
  - Images are stored in the registry .
  - The more less layer in the image the more useful it is . As the size will be less and the seucrity will be less .
  - Run Copy these are the words in the yml file of the dockerfile .
  - We should use the distroless image for the best practice as it will more fast and efficinet .
 - Minikube is the single-node cluster .Here we can create multinode cluster .