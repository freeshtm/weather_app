import 'dart:convert';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:http/http.dart' as http;
import 'package:weather_app/data/secrets.dart';

part 'weather_data.g.dart';

class WeatherData {
  final double temperature;
  final double windspeed;

  const WeatherData({required this.temperature, required this.windspeed});

  factory WeatherData.fromJson(Map<String, dynamic> json) {
    final list = json['list'];

    return WeatherData(
      temperature: list[0]['main']['temp'],
      windspeed: list[0]['wind']['speed'],
    );
  }

  @override
  String toString() {
    return 'WeatherData {'
        'temperature: $temperature, '
        'windspeed: $windspeed'
        '}';
  }
}

@riverpod
Future<WeatherData> weather(WeatherRef ref, {required String city}) async {
  final response = await http.get(
    Uri.parse(
      'http://api.openweathermap.org/data/2.5/forecast?q=$city&units=metric&lang=pl&appid=$apiKey',
    ),
  );
  if (response.statusCode == 200) {
    // print(response.body);
    return WeatherData.fromJson(json.decode(response.body));
  } else {
    throw Exception('Failed to load weather data');
  }
}

@riverpod
Future<List<String>> suggestions(SuggestionsRef ref,
    {required String city}) async {
  final response = await http.get(
    Uri.parse(
      'http://api.openweathermap.org/geo/1.0/direct?q=$city&limit=5&appid=$apiKey',
    ),
  );
  if (response.statusCode == 200) {
    final List<dynamic> suggestions = json.decode(response.body);
    return suggestions
        .map((city) => "${city['name']}, ${city['country']}")
        .toList();
  } else {
    throw Exception('Failed to load suggestions');
  }
}
