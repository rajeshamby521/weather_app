import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:weather_app/domain/entities/weather_entity.dart';
import 'package:weather_app/domain/repositories/weather_repository.dart';
import 'package:weather_app/presentation/bloc/weather_event.dart';
import 'package:weather_app/presentation/bloc/weather_state.dart';

class WeatherBloc extends HydratedBloc<WeatherEvent, WeatherState> {
  final WeatherRepository weatherRepository;

  WeatherBloc({required this.weatherRepository}) : super(WeatherInitial()){
    on<FetchWeather>(_onFetchWeather);
  }

  Future<void> _onFetchWeather(FetchWeather event, Emitter<WeatherState> emit) async {
    emit(WeatherLoading());
    try {
      final weather = await weatherRepository.getWeather(event.latitude, event.longitude);
      emit(WeatherLoaded(weather: weather));
    } catch (e) {
      emit(WeatherError(message: e.toString()));
    }
  }

  @override
  WeatherState? fromJson(Map<String, dynamic> json) {
    try {
      final weather = WeatherEntity.fromJson(json);
      return WeatherLoaded(weather: weather);
    } catch (_) {
      return null;
    }
  }

  @override
  Map<String, dynamic>? toJson(WeatherState state) {
    if (state is WeatherLoaded) {
      return state.weather.toJson();
    }
    return null;
  }
}
