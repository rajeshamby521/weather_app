class Utils{
  /// Converts temperature from Fahrenheit to Celsius.
  ///
  /// [fahrenheit] The temperature in Fahrenheit.
  /// Returns the temperature in Celsius.
  String kelvinToCelsius(double kelvin) {
    return "${(kelvin - 273.15).toStringAsFixed(1)}°C";
  }
  String getIconUrl(String icon) {
    return "http://openweathermap.org/img/wn/$icon.png";
  }
}