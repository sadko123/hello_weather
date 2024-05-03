import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<void> WeatherGet(String city) async {
  final response = await http.get(Uri.parse('http://api.weatherapi.com/v1/forecast.json?key=1d599f047d844e08b21175834241404&q=Omsk&days=1&aqi=no&alerts=yes'));
  if (response.statusCode == 200) {
    return json.decode(response.body);
  } else {
    throw Exception('Ошибка загрузки данных');
  }
}