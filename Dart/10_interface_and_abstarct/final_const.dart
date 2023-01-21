void main(List<String> args) {
  /*
  // run time 
  final date = DateTime.now();
  // comp time | time değeri bilinmediği için atanamıyor
  // comp anında değerler belliyse 
  // veri internette alınacaksa final 
  const date2 = DateTime.now();
*/

  /*
  final liste1 = [1, 2, 3];
  final liste2 = [1, 2, 3];
  // bellekteki yeri aynı
  liste1.add(4);
  liste2.add(4);

  if (liste1 == liste2) {
    print("eşit ");
  } else {
    print("eşit değil ");
  }*/

  const liste1 = [1, 2];
  const liste2 = [1, 2];

  // eşit verir ama add yapamayız 
  if (liste1 == liste2) {
    print("eşit");
  } else {
    print("eşit değil");
  }
}
