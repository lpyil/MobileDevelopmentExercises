// late

void main(List<String> args) {
  final food1 = Food();
  // print(food1.desc); --> boom because it's still null
  food1.setDesc("rice");
  print(food1.desc);
}

class Food {
  late final String desc; // before use i assign not null variable

  void setDesc(String desc) {
    this.desc = desc;
  }
}
