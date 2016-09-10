contract('User', function(accounts) {

  it("The User's Name is Saved", function() {
    var test = User.deployed();
    return test.checkProp.call("name").then(function(exists){
      assert.isTrue(exists, "The Name is Not Set");
    });
  });
  //
  // it("Delete the User Information", function(done) {
  //   var test = User.deployed();
  //   return test.removeProp.call(account[0]).then(function(){
  //   });
  // });

  // it("should put 10000 MetaCoin in the first account", function() {
  //   var meta = MetaCoin.deployed();
  //
  //   return meta.getBalance.call(accounts[0]).then(function(balance) {
  //     assert.equal(balance.valueOf(), 10000, "10000 wasn't in the first account");
  //   });
  // });

});
