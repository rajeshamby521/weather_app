import 'package:built_collection/built_collection.dart';
import 'package:weather_app/core/dio_client.dart';
import 'package:weather_app/data/models/serializers.dart';
import 'package:weather_app/data/models/weather_model.dart';
import 'package:weather_app/domain/entities/city_entity.dart';
import 'package:weather_app/domain/entities/weather_entity.dart';
import 'package:weather_app/domain/repositories/weather_repository.dart';

import '../../domain/entities/weather_data_entity.dart';

class WeatherRepositoryImpl implements WeatherRepository {
  final DioClient dioClient;

  WeatherRepositoryImpl(this.dioClient);

  @override
  Future<WeatherEntity> getWeather(double lat, double lon) async {
    final response = await dioClient.getWeather(lat, lon);

    // Deserialize JSON into WeatherModel
    final weatherModel =
        serializers.deserializeWith(WeatherModel.serializer, response.data);

    // Map WeatherModel to WeatherEntity
    BuiltList<WeatherDataEntity> forecast = weatherModel!.list.map((data) {
      return WeatherDataEntity(
        date: data.dt_txt,
        temperature: data.main.temp,
        description: data.weather.first.description,
        icon: data.weather.first.icon,
      );
    }).toBuiltList();

    return WeatherEntity(
        forecast: forecast,
        city: CityEntity(
            id: weatherModel.city.id,
            name: weatherModel.city.name,
            lat: lat,
            lon: lon));
  }
}
