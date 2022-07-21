import "dart:io";

class User {
  User(
	{int? this.id,
	required this.name,
	required this.age,
	required this.height});
  String name;
  int age;
  double height;
  int? id;

  Map toJson() {
	return {"id": id, "name": name, "age": age, "height": height};
  }

  static User fromJson(Map<dynamic, dynamic> userJson) {
	return User(
	  id: userJson['id'],
	  name: userJson['name'],
	  age: userJson['age'],
	  height: userJson['height']);
  }

  void toString() {
    return stdout.write"User(id : $id ,name: $name, age: $age, height: $height)";
  }
}
