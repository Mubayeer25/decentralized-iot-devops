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

    Prerequisites
Docker Engine 20.10+

Python 3.9+

Node.js 16+

WSL2 (Windows users)

mosquitto-clients

Setup Instructions
1. Clone the Repository
bash
Copy
git clone https://github.com/yourusername/decentralized-iot-devops.git
cd decentralized-iot-devops
2. IoT Simulator Setup
bash
Copy
cd iot-simulator
python3 -m venv venv
source venv/bin/activate
pip install paho-mqtt
3. Blockchain Setup
bash
Copy
cd blockchain
npm install
npx hardhat test
4. Docker Deployment
bash
Copy
cd docker
docker buildx build --platform linux/amd64 -t iot-simulator .
docker run -it --network host iot-simulator
Configuration
File	Purpose
iot-simulator/config.ini	MQTT broker settings
blockchain/hardhat.config.js	Ethereum network config
docker/Dockerfile	Container build instructions
CI/CD Pipeline
The GitHub Actions workflow (.github/workflows/test.yml) includes:

Smart contract testing

Docker image security scanning

Build verification

yaml
Copy
name: CI/CD Pipeline
on: [push, pull_request]

jobs:
  test:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - run: npm install
      - run: npx hardhat test
Monitoring Setup
To monitor the system:

bash
Copy
docker-compose -f monitoring/docker-compose.yml up
Access dashboards at:

Prometheus: http://localhost:9090

Grafana: http://localhost:3000

License
Apache 2.0 - See LICENSE for details

Troubleshooting Guide
Error	Solution
COPY failed	Ensure files are in Docker build context
buildx missing	Follow buildx installation
MQTT connection failed	Verify Mosquitto broker is running
