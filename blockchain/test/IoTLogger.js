const { expect } = require("chai");

describe("IoTLogger", function () {
  it("Should log and retrieve sensor data", async function () {
    const IoTLogger = await ethers.getContractFactory("IoTLogger");
    const logger = await IoTLogger.deploy();
    await logger.logData("sensor1", 25);
    expect(await logger.getDataCount("sensor1")).to.equal(1);
  });
});