class Course {
  final String name;
  final double credit;
  final double letterValue;

  Course({required this.name, required this.credit, required this.letterValue});

  @override
  String toString() {
    return "$name , $credit , $letterValue";
  }
}