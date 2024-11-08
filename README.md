## Kafka rolling aggregation with ksqldb

This project demonstrates a simple real-time data processing pipeline using Apache Kafka and ksqlDB. The focus is on sending transaction data to Kafka, receiving it in ksqlDB for learning purposes, and then performing aggregations in a Kafka Consumer.

# Overview

The project is designed to demonstrate real-time data ingestion and streaming using Kafka and ksqlDB. It includes:

- A Kafka Producer to send transaction data to a Kafka topic in JSON format.
- A ksqlDB Stream to receive and process data from the Kafka topic without performing aggregations.
- A Kafka Consumer to read, aggregate and display processed data.
- ksqlDB receives and processes the stream from the Kafka topic, making the data available for queries in ksqlDB without performing any aggregations.

# Results

- Table in ksqldb
  ![ksqldb](https://cdn.discordapp.com/attachments/716655315613122670/1304466304098500608/Result_in_Consumer.png?ex=672f7e6a&is=672e2cea&hm=06181e383a4256eaa4f5089ce43b50a731cbba96f7bdc3f36e6d656b91faf83b&)
- Result in producer
  ![producer](https://cdn.discordapp.com/attachments/716655315613122670/1304466304539033710/Screenshot_2024-11-08_221205.png?ex=672f7e6a&is=672e2cea&hm=defc743cc3f2fa42b70559707737db6b662e2a8585072a15065143d95b28c07c&)
- Result in consumer
  ![consumer](https://cdn.discordapp.com/attachments/716655315613122670/1304466304928976998/stream-to-ksqldb.png?ex=672f7e6a&is=672e2cea&hm=ca16110531c7bb28e3b70a72fc2435073a4f4474e4eafb6a5b73fc008225265e&)

# Installation

1. Clone This Repo.
2. Run `make docker-build` for x86 user, or `make docker-build-arm` for arm chip user.

---

```
## docker-build                 - Build Docker Images (amd64) including its inter-container network.
## docker-build-arm             - Build Docker Images (arm64) including its inter-container network.
## postgres                     - Run a Postgres container
## spark                        - Run a Spark cluster, rebuild the postgres container, then create the destination tables
## jupyter                      - Spinup jupyter notebook for testing and validation purposes.
## airflow                      - Spinup airflow scheduler and webserver.
## kafka                        - Spinup kafka cluster (Kafka+Zookeeper).
## datahub                      - Spinup datahub instances.
## metabase                     - Spinup metabase instance.
## clean                        - Cleanup all running containers related to the challenge.
```

---
