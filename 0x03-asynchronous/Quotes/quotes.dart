import 'package:http/http.dart' as http;
import 'dart:convert';

Future<String> generateQuote(id) async {
  try {
    final response = await http.get(
      Uri.parse("https://www.breakingbadapi.com/api/quotes"),
    );
    var jsonResponse = jsonDecode(response.body);
    return ("${jsonResponse[id - 1]["author"]} : ${jsonResponse[id - 1]["quote"]}");
  } catch (error) {
    return "There are no quotes";
  }
}
