import 'dart:convert';

Future<String> fetchUserOrders(String id) async {
  var orders = {
    "7ee9a243-01ca-47c9-aa14-0149789764c3": ["pizza", "orange"]
  };
  try {
    return Future.delayed(
        const Duration(seconds: 2), () => json.encode(orders[id]));
  } catch (err) {
    return "error caught : $err";
  }
}

Future<String> fetchUserData() => Future.delayed(
      const Duration(seconds: 2),
      () =>
          '{"id" : "7ee9a243-01ca-47c9-aa14-0149789764c3", "username" : "admin"}',
    );

Future<String> fetchProductPrice(product) async {
  var products = {"pizza": 20.30, "orange": 10, "water": 5, "soda": 8.5};
  try {
    return Future.delayed(
        const Duration(seconds: 2), () => json.encode(products[product]));
  } catch (err) {
    return "error caught : $err";
  }
}

calculateTotal() async {
  try {
    var userData = json.decode(await fetchUserData());
    var orderId = await fetchUserOrders(userData["id"]);
    var ordersList = json.decode(orderId);
    var getItem = "";
    double totalSum = 0.0;
    for (var i in ordersList) {
      getItem = await fetchProductPrice(i);
      totalSum += json.decode(getItem);
    }
    return totalSum;
  } catch (error) {
    return -1;
  }
}
