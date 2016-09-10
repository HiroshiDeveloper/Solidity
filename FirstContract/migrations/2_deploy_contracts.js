module.exports = function(deployer) {
  deployer.deploy(StringMap);
  deployer.deploy(User);
  deployer.autolink();
};
