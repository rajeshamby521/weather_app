import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:weather_app/core/dio_client.dart';
import 'package:weather_app/presentation/bloc/weather_bloc.dart';
import 'package:weather_app/presentation/pages/weather_page.dart';

import 'data/repositories/weather_repository_impl.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize HydratedBloc for local storage
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorage.webStorageDirectory
        : await getApplicationDocumentsDirectory(),);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<WeatherRepositoryImpl>(
          create: (context) => WeatherRepositoryImpl(DioClient()),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<WeatherBloc>(
            create: (context) => WeatherBloc(
              weatherRepository: context.read<WeatherRepositoryImpl>(),
            ),
          ),
        ],
        child: MaterialApp(
          title: 'Weather App',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const WeatherPage(),
        ),
      ),
    );
  }
}
