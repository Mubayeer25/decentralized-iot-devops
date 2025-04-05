# Decentralized IoT Data Pipeline with DevOps Automation

![Docker](https://img.shields.io/badge/Docker-2CA5E0?style=for-the-badge&logo=docker&logoColor=white)
![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)
![Ethereum](https://img.shields.io/badge/Ethereum-3C3C3D?style=for-the-badge&logo=ethereum&logoColor=white)
![MQTT](https://img.shields.io/badge/MQTT-3C5280?style=for-the-badge&logo=eclipsemosquitto&logoColor=white)

A proof-of-concept implementation of a decentralized IoT data pipeline with DevOps automation, combining:
- IoT sensor simulation
- Blockchain data logging
- Containerized deployment
- CI/CD automation

## Architecture Overview

```mermaid
graph TD
    A[IoT Sensor Simulator] -->|MQTT| B[Mosquitto Broker]
    B -->|Publish| C[Python Data Processor]
    C -->|Store| D[Ethereum Smart Contract]
    D --> E[IPFS Backup]
    F[Docker Container] --> A
    G[CI/CD Pipeline] --> F