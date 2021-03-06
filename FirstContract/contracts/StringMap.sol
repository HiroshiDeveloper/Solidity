library StringMap {

  struct sMap {
    mapping (string => string) properties;
    mapping (string => bool) hasProperty;
    string[] propertyKeys;
    uint pos;
  }

  function insert(sMap storage self, string key, string value) returns (bool error) {
    if (!self.hasProperty[key]) {
      self.properties[key] = value;
      self.hasProperty[key] = true;
      self.propertyKeys.push(key);
      return false;
    }
    return true;
  }

  function remove(sMap storage self, string key) returns (bool deleted) {
    if (!self.hasProperty[key]) {
      return false; // Doesn't exist
    }
    self.properties[key] = '';
    self.hasProperty[key] = false;
    //delete self.propertyKeys[key]; // Delete array element
    return true;
  }
  
/*function getIndex(sMap storage self, string key) returns (uint index) {
     for(uint i = 0; i < self.propertyKeys.length; i++) {
       if (self.propertyKeys[i] == key) return i;
     }
}*/

  function contains(sMap storage self, string key) returns (bool exists) {
    if (!self.hasProperty[key]) {
      return false;
    }
    return true;
  }

/* function next(sMap storage self) returns (string value, bool err) {
     if (self.pos < self.propertyKeys.length-1) {
       self.pos += 1;
       return self.properties[self.propertyKeys[self.pos];
     }
     return (self.properties[self.pos], false);
} */

}
