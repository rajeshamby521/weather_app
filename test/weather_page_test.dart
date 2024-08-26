import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:weather_app/domain/entities/city_entity.dart';
import 'package:weather_app/domain/entities/weather_data_entity.dart';
import 'package:weather_app/domain/entities/weather_entity.dart';
import 'package:weather_app/domain/repositories/weather_repository.dart';
import 'package:weather_app/presentation/bloc/weather_bloc.dart';
import 'package:weather_app/presentation/pages/weather_page.dart';
import 'package:weather_app/presentation/widgets/weather_widget.dart';

// Mock WeatherRepository
class MockWeatherRepository extends Mock implements WeatherRepository {}

Future<void> main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // HydratedBloc.storage = await HydratedStorage.build(
  //     storageDirectory: kIsWeb
  //         ? HydratedStorage.webStorageDirectory
  //         : await getApplicationDocumentsDirectory(),);
  late WeatherRepository mockWeatherRepository;

  setUp(() {
    mockWeatherRepository = MockWeatherRepository();
  });


  testWidgets('displays weather data when state is WeatherLoaded', (tester) async {
    // Map WeatherModel to WeatherEntity
    BuiltList<WeatherDataEntity> forecast =[WeatherDataEntity(
      date: '26/8/2024 - 9:0',
      temperature: 300.14,
      description: "Sunny",
      icon: "10d"
    )].toBuiltList();

    final weather =  WeatherEntity(
        forecast: forecast,
        city: CityEntity(
            id: 1,
            name: "Surat",
            lat: 0.0,
            lon: 0.0));

    when(() => mockWeatherRepository.getWeather(any(), any()))
        .thenAnswer((_) async => weather);

    await tester.pumpWidget(
      BlocProvider<WeatherBloc>(
        create: (_) => WeatherBloc(weatherRepository: mockWeatherRepository),
        child: const MaterialApp(
          home: WeatherPage(),
        ),
      ),
    );


    // Assert
    await tester.pump(); // Trigger a frame.
    expect(find.byType(WeatherCard), findsOneWidget);
    expect(find.text('26/8/2024 - 9:0'), findsOneWidget); // Adjust to expected format.
    expect(find.text('Sunny'), findsOneWidget);
    expect(find.text('27.0°C'), findsOneWidget); // Assuming 300.14K is converted to 27.0°C.
  });

}
