# Why
- Its journey started from the year 1960 .
- Through this this we can acces resource dynamically for agility and flexibility to meet customer needs .
- In this we pay as we go to test and use the system without being commited .
-  Cloud computing is defined as the on demand delivery of IT resources over the internet with the pay as we go for pricing .
-  Modern computing is based on the client-server model .
  - A cient is the end user .
  - A server can be services such as AMAZON ELSATIC compute cloud or any req/res model or we can say the virtual machine .
  - Delploying the cloud 
   - Cloud service and deploymet methods provide the different level of control,flexibilty and management .
   - The deployment model include the 
     - Infrastructure as model.
     - Platform as service .
     - Software as a service .
   - Deployment strategies include the following
     - Cloud -  In this we can migrate existing application to the cloud or we can design the new application in the cloud ,we can design these things at the low level and the high level too . And can scale up to the core infrastucture . 
     - HYBRID - In this cloud-based resources are connected to on-permises infrasture . 
     - On- Permises  - It is the private cloud delployment in this resource are deployed on permises by using the virtualization and resource management tools .

- It is a best practice to spread out your computing resource accross multiple availability zones to gurantee high availability ,so if one fails then also your architecture is still up  and running  .
- When a file is stored in Amazon S3,the file is redunbuntaly copied into every availabilty zone in that region. 
- AWS share the responsibility with customer .
  - AWS is responsible for the secuirty of the cloud .
     - Compute
     - Storage
     - Database
     - Networking
     - AWS global infrastructure 
  - Customers are  responsible for their security in the cloud .
    - Customer data 
    - Platform,Application, Identity and access Management 
    - OS
    - Networking and firewall configuration .
    - Client side data encryption 
  - Operationa  Excellence is the ability to run and monitor system to deliver businedd valu and to continually improve the supporting process abnd procedure .
  - Security pillar is the ability to protect the informtion .
  - Reliability is the ability of a system to recover from the infrastrucutre or service disruption .
  - Performance Efficinecy is  the ability to use computing resource . 
  - TCO is the fincial metric .
  # Insatnace 
  - An instance is a fundamental concept in cloud computing,particular in AWS and other cloud .
  - At its core an instance is a virtual server that you can use to run applications and workload in  cloud . 
  - It providing computing resource such resource such as CPU,memory,storage and netwokring. 
  - Instance are typically associated with the Amazon EC2 (Amazon Elastic Compute Cloud2) .
  - We can choose the type and size of an instance based on your workload needs ./
  - An instance is a virtualized representation of a physical server .
  - Instance can run various operating system upto your wish .
  - To lauch EC2 instance on AWS we can choose AMI(Amazon machine image) which determines the operating system and the software on the instance .
  - `Elastic` Refers to the ability to dynamically scale computing resources up or down based on demand. Elasticity is cornerstone of cloud computing and allows system to handle varying workloads efficiently without requiring over-provisioning or mannual adjustments .
  - `When some one say i am giving you the one instance from my server` It simply means that they are sharing a piece of their server computing capacity with you . often isolating it so feels like your own dedicated computer .
  - `Spin up` is a casual way of saying they are launching or creating a new virtual server. By allocating the resource and allowing you to use it .One you have been given the access it like a having remote computer where we can host website run applications store and process data .
  - IP addrees and key file are the important thing for you to connect it from your end and start using it .
  - `Amazon Machine Image` is a pre-configured template used to launch an instance .
  - `Instance type` means the size and capabilities of the instance(eg t2micr)
  - `Instance` means virtual server running in the cloud .
  - `Server` refers to the physical machine or virtual instance used to run applications .
  - `VPC` refers to the virtual private isolated network for your cloud resources. 
  - Vertical scaling means increasing the size .(means upgrading the things)
  - Horizontal scaling means adding more instance (means add resourcr)
  - In Elasticity it adjust resouce to handle chages in demand .
  - Auto scaling means launces and terminates instances based on demand .
  - Load Balancer: Distributes incoming traffic across multiple instances.
  # AWS S3
   - It means amazon simple storage service .
   - Buckets are contianer for the data store in the S3 .
   - Dynamo DB is the key-value database service.It is serverless which means you do not have to provison,patch or manage servers .
  # AWS EC2 (Amazon elastic Compute cloud)
  - An instance refers to the virtual server in the cloud .
  - With EC2 we can congifgure and setup our os  uponf which our application will run .
  - EC2 determine the hardware availibility to your instance .
  - Each instance types offers a different balance of compute,memory,network and storage resource ,
  - Reserved instance are one cheaper instance for the long time runn.
  # Amazon Virtual Private cloud (Amazon VPC )
  - In this module we create our own pvt network .
  -  An VPC is an isolated portion of the AWS populate by .

  # AWS RDS (Relational Database Service )
   - It is use to set-up and scale relational database in the AWS cloud .
   - 
  # AWS IAM (Identity and Access Management )
   - It let the user with the permission accros AWS.
  # AWS lambda 
   - It is a serverless computing service that is used to process snippets of code when a lambad function os triggered .
  # AWS cloud watch 
   - It is use to monitor the stuff .
