import 'package:http/http.dart' as http;
import 'dart:convert';

printBbCharacters() async {
  try {
    var url = Uri.parse("https://www.breakingbadapi.com/api/characters");
    final response = await http.get(url);
    var jsonResponse = jsonDecode(response.body);
    for (var i = 0; i < jsonResponse.length; i++) {
      print("${jsonResponse[i]["name"]}");
    }
  } catch (error) {
    print('error caught: $error');
  }
}
