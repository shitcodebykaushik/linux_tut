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
 Go into the APIS & Services Then move into the Credentials /
 Click on the create credentials 
 then click on the APi key 
 Copine the api key AIzaSyCFzM6bgNGfemksze_8kTF9dp1VVPpKXnY
 {
  "config": {
      "encoding":"FLAC",
      "languageCode": "en-US"
  },
  "audio": {
      "uri":"gs://cloud-samples-tests/speech/brooklyn.flac"
  }
}