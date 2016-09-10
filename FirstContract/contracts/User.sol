import "StringMap.sol";

contract User {

  using StringMap for StringMap.sMap;
  StringMap.sMap props;

  function User() {
    props.insert("name", "Hiroshi");
    props.insert("Address", "407 Granville");
  }

  function removeProp(string key) {
    props.remove(key);
  }

  function checkProp(string key) returns(bool exists){
    exists = props.contains(key);
    return exists;
  }

  function returnAllUsers() {
  // Iteration
  }

}
