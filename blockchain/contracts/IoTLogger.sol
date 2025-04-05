// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract IoTLogger {
    struct SensorData {
        uint256 timestamp;
        uint256 value;
    }
    
    mapping(string => SensorData[]) public sensorReadings;
    
    function logData(string memory sensorId, uint256 value) public {
        sensorReadings[sensorId].push(SensorData(block.timestamp, value));
    }

    function getDataCount(string memory sensorId) public view returns (uint) {
        return sensorReadings[sensorId].length;
    }
}