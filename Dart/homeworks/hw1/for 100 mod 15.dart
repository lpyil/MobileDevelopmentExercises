//  1-100 15 e bölünen sayıların karesi

void main(List<String> args) {
  for (var i = 0; i < 100; i++) {
    if (i % 15 == 0) {
      print(i * i);
    }
  }
}
