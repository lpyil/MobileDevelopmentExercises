// keyler string değerleri var olan map yap pc info tut

void main(List<String> args) {
  Map<String, dynamic> pc = {};

  pc["Ram"] = 16;
  pc["ssd"] = true;
  pc["name"] = "mac";

  for (var i in pc.entries) {
    print("${i.key} : ${i.value} ");
  }
}
