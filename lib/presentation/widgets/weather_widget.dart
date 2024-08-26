import 'package:flutter/material.dart';
import 'package:weather_app/core/utils.dart';

import '../../domain/entities/weather_data_entity.dart';

class WeatherCard extends StatelessWidget {
  final WeatherDataEntity weatherItem;

  const WeatherCard({required this.weatherItem, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      elevation: 4.0,
      child: ListTile(
        contentPadding: const EdgeInsets.all(16.0),
        title: Text(weatherItem.date),
        subtitle: Text(weatherItem.description),
        trailing: Text(Utils().kelvinToCelsius(weatherItem.temperature)),
        leading: Image.network(
          Utils().getIconUrl(weatherItem.icon),
          width: 40,
          height: 40,
        ),
      ),
    );
  }
}
