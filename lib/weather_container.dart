import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app/data/weather_data.dart';

class WeatherContainer extends ConsumerStatefulWidget {
  const WeatherContainer({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _WeatherContainer();
}

class _WeatherContainer extends ConsumerState<WeatherContainer> {
  final TextEditingController _cityNameController =
      TextEditingController(text: 'Lubliniec');

  @override
  Widget build(BuildContext context) {
    final weather = ref.watch(weatherProvider(city: _cityNameController.text));
    print(weather);
    final suggestions = ref.watch(suggestionsProvider(city: 'Lubliniec'));
    print(suggestions);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather App'),
        elevation: 5,
      ),
    );
  }
}
