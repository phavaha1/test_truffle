const SimpleStorage = artifacts.require("SimpleStorage");

// contract("SimpleStorage", accounts => {
//   it("account should set to 2000", () => {
//     SimpleStorage.deployed()
//       .then(instance => {
//         assert.equal(
//           200,
//           1000,
//           "account not set to 2000"
//         );
//       })
//   })
// })

contract("SimpleStorage", (accounts) => {
  console.log(accounts);
  console.log(accounts.length);
  let storageInstance;
  beforeEach(async () => {
      storageInstance = await SimpleStorage.new()
  })
  it("should allow to set coin", async () => {
    let tx = await storageInstance.set(4);
    const logStorageSet = tx.logs[0];
    assert.strictEqual(logStorageSet.event, "Even", "set() call did not log event Even");
  })
})