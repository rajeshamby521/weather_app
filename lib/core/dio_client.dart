import 'package:dio/dio.dart';

class DioClient {
   Dio dio=Dio();

  DioClient() {
    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        options.queryParameters['appid'] = '4a6344ff309c4c056572cee683370e9d';
        handler.next(options);
      },
    ));
  }

  Future<Response> getWeather(double lat, double lon) async {
    return await dio.get(
      'https://api.openweathermap.org/data/2.5/forecast',
      queryParameters: {
        'lat': lat,
        'lon': lon,
      },
    );
  }
}
