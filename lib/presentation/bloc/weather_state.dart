// weather_bloc.dart

import 'package:equatable/equatable.dart';

import '../../domain/entities/weather_entity.dart';


// Weather State
abstract class WeatherState extends Equatable {
  const WeatherState();

  @override
  List<Object?> get props => [];
}

class WeatherInitial extends WeatherState {}

class WeatherLoading extends WeatherState {}

class WeatherLoaded extends WeatherState {
  final WeatherEntity weather;

  const WeatherLoaded({required this.weather});

  @override
  List<Object?> get props => [weather];
}

class WeatherError extends WeatherState {
  final String message;

  const WeatherError({required this.message});

  @override
  List<Object?> get props => [message];
}

