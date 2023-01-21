// write func input id to bring user.
// process 2 sec after must be map

// After get user name show courses with 4 sec in list

// 1 sec after print grade of first course 
void main(List<String> args) {
  userFromId(5)
      .then((Map value) => coursesFromUser(value['user']).then((List courses) {
            String firstCourse = courses.first;
            print(courses);
            print(firstCourse);
            grades(firstCourse).then((String value) => print(value));
          }));
}

Future<String> grades(String courseName) {
  return Future<String>.delayed(Duration(seconds: 1), () {
    return "cc";
  });
}

Future<List<String>> coursesFromUser(String user) {
  print("$user courses  started  ");
  return Future<List<String>>.delayed(Duration(seconds: 2), () {
    return ["math", "music", "oop"];
  });
}

Future<Map> userFromId(int id) {
  print("user from $id started  ");

  return Future<Map<String, dynamic>>.delayed(Duration(seconds: 2), () {
    return {"user": "lp", "id": id};
  });
}
