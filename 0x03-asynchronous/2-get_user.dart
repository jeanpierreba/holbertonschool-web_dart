import 'dart:convert';

Future<String> fetchUser() => Future.delayed(
      const Duration(seconds: 2),
      () => throw 'Cannot locate user',
    );

Future<void> getUser() async {
  try {
    var userDataId = await fetchUser();
    print(jsonDecode(userDataId)['id']);
  } catch (error) {
    print('error caught: $error');
  }
}
