import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class WeeklyWeatherScreen extends ConsumerWidget {
  const WeeklyWeatherScreen({super.key});

  static const routeName = '/weekly-weather';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weekly Weather'),
        elevation: 4,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          for (int i=0; i<7; i++)
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //single day weather data
            ],
          ),
        ],
      ),
    );
  }
}