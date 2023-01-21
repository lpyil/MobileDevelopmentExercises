void main(List<String> args) {
  var map1 = {"name": "alp"};
  var map2 = {"yas": 32};

  var mapAll = {...map1, ...map2};
  print(mapAll);
}
