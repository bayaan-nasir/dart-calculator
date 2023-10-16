import 'dart:convert';

import "package:http/http.dart" as http;


Future<double> convert(double amount, String? from, String? to) async {
  final url = Uri.http(
    'data.fixer.io',
    '/api/latest',
    {
      'access_key': 'f075fdfecf7af0bb9bebebc160eee2e1',
      'base': 'EUR',
      'symbols': '$from,$to,EUR',
      'format': '1'
    }
  );

  final rawData = await http.read(url);
  final data = json.decode(rawData) as Map<String, dynamic>;
  double amount = data['rates']['$to'] / data['rates']['$from'];

  yield amount;
  
}