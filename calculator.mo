//initial canister ID = ury7f-eqaaa-aaaab-qadlq-cai

actor Calculator {
  var cell : Int = 0;

  // adding
  public func add(x : Int) : async Int {
    cell += x;
    cell
  };

  //subtracting
  public func subtract(x : Int) : async Int {
    cell -= x;
    cell
  };

  //multiplying
  public func multiply(x : Int) : async Int {
    cell *= x;
    cell
  };

  //dividing
  public func divide(x : Int) : async ?Int {
    if (x == 0) {
      null; // error
    } else {
      cell /= x;
      ?cell
    }
  };

  //clear the value
  public func clear() : async () {
    cell := 0
  }
}
