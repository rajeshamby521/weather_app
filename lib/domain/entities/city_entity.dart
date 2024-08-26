class CityEntity {
  final int id;
  final String name;
  final double lat;
  final double lon;

  CityEntity({
    required this.id,
    required this.name,
    required this.lat,
    required this.lon,
  });

  // Converting CityEntity to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'lat': lat,
      'lon': lon,
    };
  }

  // Creating CityEntity from JSON
  factory CityEntity.fromJson(Map<String, dynamic> json) {
    return CityEntity(
      id: json['id'],
      name: json['name'],
      lat: json['lat'].toDouble(),
      lon: json['lon'].toDouble(),
    );
  }
}
