FROM python:3.9-slim
RUN pip install paho-mqtt
COPY ../iot-simulator/sensor_simulator.py /app/
WORKDIR /app
CMD ["python", "sensor_simulator.py"]