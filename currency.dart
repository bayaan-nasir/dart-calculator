import 'dart:convert';
import "package:http/http.dart" as http;
import 'secrets.dart';


Future<double> convert(double amount, String? from, String? to) async {
  final url = Uri.http(
    'data.fixer.io',
    '/api/latest',
    {
      'access_key': api_key,
      'base': 'EUR',
      'symbols': '$from,$to,EUR',
      'format': '1'
    }
  );

  final rawData = await http.read(url);
  final data = json.decode(rawData) as Map<String, dynamic>;
  double toRates = data['rates']['$to'] ?? 0.0;
  double fromRates = data['rates']['$from'] ?? 0.0;
  double amount =  toRates / fromRates;

  return amount;
  
}