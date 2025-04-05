import paho.mqtt.client as mqtt
import random, time

client = mqtt.Client()
client.connect("localhost", 1883)

while True:
    temp = random.randint(20, 30)
    client.publish("iot/sensor1/temperature", temp)
    print(f"Published: {temp}°C")
    time.sleep(5)