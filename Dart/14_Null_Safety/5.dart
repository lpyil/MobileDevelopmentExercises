// type promotion

// --> nullable never null
void main(List<String> args) {
  String? message;
  // system know assigned  not null
  // print(message.length);
  if (DateTime.now().hour < 12) {
    message = "morning";
  } else {
    message = "good night";
  }

  print(message);
  print(message.length);

  // type promotion from base class to derived class
  Object text = "this is a string ";
  // without if condition --> Boom 
  if (text is String) {
    print(text.length);
  }
}
