void main(List<String> args) {
  Function sumNumbers2 = (int a, int b) {
    print(a + b);
  };

  // lambda : ismi olmayan fonc 
  // dartta her func bir nesnedir 

  sumNumbers2(3, 8);
  
  // these functions are same 
  var f2 = (int s) => s * 2;
  var f3 = (int s2) {
    return s2 * 2;
  };
  print(f2(3));
  print(f3(3));
}

// normal function
void sumNumbers(int a, int b) {
  print(a + b);
}
