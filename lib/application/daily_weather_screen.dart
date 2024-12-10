import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DailyWeatherScreen extends HookConsumerWidget {
  const DailyWeatherScreen({super.key});

  static const routeName = '/daily-weather';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentDayIndex = useState<int>(0);

    return Scaffold(
      appBar: AppBar(
        title: Text('Daily Weather'),
        elevation: 4,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Day of week'),
          Text('01.01.2020'),
          // icon of weather
          Row(
            children: [
              Text('min temp'),
              Text('max temp'),
            ],
          ),
          Row(
            children: [
              Text('% for rain'),
              Text('pressure'),
            ],
          )
        ],
      ),
    );
  }
}