List<double> convertToF(List<double> temperaturesInC) {
  List<double> temperatures = temperaturesInC.map((temperaturesInC) {
    return double.parse((temperaturesInC * 9 / 5 + 32).toStringAsFixed(2));
  }).toList();
  return temperatures;
}
