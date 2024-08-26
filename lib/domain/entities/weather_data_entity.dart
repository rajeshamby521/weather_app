class WeatherDataEntity {
  final String date;
  final String description;
  final double temperature;
  final String icon;

  WeatherDataEntity({required this.date, required this.temperature,required this.description,required this.icon});

  // Converting WeatherDataEntity to JSON
  Map<String, dynamic> toJson() {
    return {
      'date': date,
      'temperature': temperature,
      'description': description,
      'icon': icon,
    };
  }

  // Creating WeatherDataEntity from JSON
  factory WeatherDataEntity.fromJson(Map<String, dynamic> json) {
    return WeatherDataEntity(
      date: json['date'],
      icon: json['icon'],
      description: json['description'],
      temperature: json['temperature'].toDouble(),
    );
  }
}
