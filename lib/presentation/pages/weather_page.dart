import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_app/core/geolocation_service.dart';
import 'package:weather_app/presentation/bloc/weather_bloc.dart';

import '../bloc/weather_event.dart';
import '../bloc/weather_state.dart';
import '../widgets/weather_widget.dart';

// weather_page.dart


class WeatherPage extends StatelessWidget {
  const WeatherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Weather App')),
      body: Center(
        child: BlocBuilder<WeatherBloc, WeatherState>(
          builder: (context, state) {
            if (state is WeatherInitial) {
              return const Text('Press the button to fetch weather');
            } else if (state is WeatherLoading) {
              return const CircularProgressIndicator();
            } else if (state is WeatherLoaded) {
              return ListView.builder(
            itemCount: state.weather.forecast.length,
            itemBuilder: (context, index) {
              final weather = state.weather.forecast[index];
              return WeatherCard(weatherItem:weather,);
            },
          );
            } else if (state is WeatherError) {
              return Text('Error: ${state.message}');
            }
            return Container();
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          Position position=await GeolocationService().getCurrentLocation();
          context.read<WeatherBloc>().add(FetchWeather(
            latitude: position.latitude,
            longitude: position.longitude,
          ));
        },
        child: const Icon(Icons.search),
      ),
    );
  }
}
