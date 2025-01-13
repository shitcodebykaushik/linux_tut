# Working with the JSON,Arrays and Struct in BigQuery 
 ## GSP412
 - This is module where we are going to handle the semi-structured data within the BigQuery,focusing on the tasks such as the loading,querying,troubleshooting and unnesting JSON data and arrays data types .
 - What is semi-structured data ? 
   - Semi-structured data is data that doesn't fit into the rows and columns like traditional databases but still has some structure,like tags or markers to organize it.Example include JSON,XML and log files . It is flexible and can handle varying formats within the same dataset. It is organized into the heirarchial way such as XML or JSON where elements are nested . It used tags instead of the rigid table/column .

 - Why it matters in the cloud ?
   - Scalability Easy to store and query data.
   - Adaptability Allows systems to evolve over time without requiring extensive schema design .
   - Integration Ideal for data exchange between different systems and applications especially in modern distributed systems .
 - How it is used in BigQuery ?
   - It provides few features like 
     - Nested and Repeated fields 
     - Array and struct data types to handle semi-structured dataset efficiently .
     - UNNEST functions to flatten arrays and nested structures for easier querying .
# BigQuery 
 - It is NoOps low cost analytics database .
 - It is serveless(No need to manage server,storage or database tunning) and highly scalable data warehouse .
 - With the SQL query you can easily analyzing large data sets .
 - Ingested means the process of importing,collection or bringing data from theh various source into a system for processing,storage,analysis .
 - 
- These are the queries used to solve the module one .
 ```sql
 #standardSQL
SELECT
  fullVisitorId,
  date,
  v2ProductName,
  pageTitle
  FROM `data-to-insights.ecommerce.all_sessions`
WHERE visitId = 1501570398
ORDER BY date
# 2
SELECT
  fullVisitorId,
  date,
  ARRAY_AGG(v2ProductName) AS products_viewed,
  ARRAY_LENGTH(ARRAY_AGG(v2ProductName)) AS num_products_viewed,
  ARRAY_AGG(pageTitle) AS pages_viewed,
  ARRAY_LENGTH(ARRAY_AGG(pageTitle)) AS num_pages_viewed
  FROM `data-to-insights.ecommerce.all_sessions`
WHERE visitId = 1501570398
GROUP BY fullVisitorId, date
ORDER BY date
# 3
SELECT
  fullVisitorId,
  date,
  ARRAY_AGG(v2ProductName) AS products_viewed,
  ARRAY_LENGTH(ARRAY_AGG(v2ProductName)) AS num_products_viewed,
  ARRAY_AGG(pageTitle) AS pages_viewed,
  ARRAY_LENGTH(ARRAY_AGG(pageTitle)) AS num_pages_viewed
  FROM `data-to-insights.ecommerce.all_sessions`
WHERE visitId = 1501570398
GROUP BY fullVisitorId, date
ORDER BY date
#4
SELECT
  fullVisitorId,
  date,
  ARRAY_AGG(DISTINCT v2ProductName) AS products_viewed,
  ARRAY_LENGTH(ARRAY_AGG(DISTINCT v2ProductName)) AS distinct_products_viewed,
  ARRAY_AGG(DISTINCT pageTitle) AS pages_viewed,
  ARRAY_LENGTH(ARRAY_AGG(DISTINCT pageTitle)) AS distinct_pages_viewed
  FROM `data-to-insights.ecommerce.all_sessions`
WHERE visitId = 1501570398
GROUP BY fullVisitorId, date
ORDER BY date
#5
SELECT
  *
FROM `bigquery-public-data.google_analytics_sample.ga_sessions_20170801`
WHERE visitId = 1501570398
#6 
SELECT DISTINCT
  visitId,
  h.page.pageTitle
FROM `bigquery-public-data.google_analytics_sample.ga_sessions_20170801`,
UNNEST(hits) AS h
WHERE visitId = 1501570398
LIMIT 10
#7 
#standardSQL
SELECT STRUCT("Rudisha" as name, [23.4, 26.3, 26.4, 26.1] as splits) AS runner
 ```


 # Creating API
- In this module we first created the API then we tried to connect the API to  instance from the google computes engine .
 Go into the APIS & Services Then move into the Credentials /
 Click on the create credentials 
 then click on the APi key 
 The api key `` -> this is the dummy api that we have .
 {
  "config": {
      "encoding":"FLAC",
      "languageCode": "en-US"
  },
  "audio": {
      "uri":"gs://cloud-samples-tests/speech/brooklyn.flac"
  }
}
# Moudle Autoscaling 
- Autoscalling is fetures in cloud computing that automatically adjusts the number of compute resource such as virtul machine , or container instance based on the current demands. In gcp autoscalling helps to ensure that application have the right amount of resource at any given time, optimizing the cost efficiency without declining the performance . For maintaing the application availability and reliability by scalling up resource  during the peak time .
# `Bucket`
- Bucket refers to a storage container within Google cloud storage.
- Buckets are used to hold data objects,which can be any kind of file such as images,videos documents or backups.
- Buckets name should be always unique across GCP .
- Bucket come with the permission and access control policies allowing the fine line grained .
- Remember the object are the fundamental unit of the data that is stored in a buckets .
- Buckets are immutable means that once the object are uploaded then object cant be modified but it can be overwrite an object by uploading new version with the same name .
- Buckets are flat means there are no dictories, instead it have folder structue like `folders/file.txt`. As it does not follow the hierarchical structure .
- Buckets are encrpyted by default, and versioning on the bucket is enabled then  object can be  stored whenever you onverwrite an object .
- Google cloud storage buckets are stored as binary blobs along with the meta data making the system higle available  with the flexible and optimized for performance .
# `Creating Instance Template`
- It simply means defining the resuable configuration for virtual machine instance,instead of manually specifying all the settings every time you create VM, with the template we can create multiple VMs with the identical configuration .
- When we create instance template we can specify several key settings .
  - Machine type 
  - Boot Disk 
  - Network ans subnetwork 
  - Metadata 
  - Firewall tags 
  - Service account and scopes 
  - Startup scripts 
  - Lables : Key-value pair for resource organisations .
# Metric 
- These are the quantifible measurement that represents a specific aspect of the system ,application or behavior over time .
# Compute Engine 
- It is a service provided by the gcp for the customizable virtual machine for running application , offers flexibility in choosing the flexibility in choosing the cpu and all .Use it for web hosting, data processing, machine learning, or migrating on-premises workloads.
- Scripts are the peace of the code or instruction used to automate tasks .
- 