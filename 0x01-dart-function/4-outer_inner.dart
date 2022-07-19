void outer(String name, String id) {
  String inner() {
    var tokens = name.split(" ");
    var short_name = tokens[1].substring(0, 1) + "." + tokens[0];
    return "Hello Agent $short_name your id is $id";
  }
  print(inner());
}
