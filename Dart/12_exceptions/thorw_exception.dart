import 'dart:math';

void main(List<String> args) {
  try {
    double value = Mysqrt(-25);
    print("value is :${value.toStringAsFixed(2)}");
  } on FormatException catch (e) {
    print(e.message);
  } catch (e) {
    print("BOOM --> $e");
  }
}

double Mysqrt(int i) {
  if (i < 0) {
    throw FormatException("enter + number "); 
  }

  // if we throw inside a function with exatly catch --> this one work 
  return sqrt(i);
}
