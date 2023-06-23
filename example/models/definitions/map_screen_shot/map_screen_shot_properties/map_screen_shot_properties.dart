import '../../car_place_category/car_place_category_properties/contact_name_class/contact_name_class.dart';

class MapScreenshotProperties {
  final ContactNameClass longitude;
  final ContactNameClass latitude;

  MapScreenshotProperties({
    required this.longitude,
    required this.latitude,
  });

  factory MapScreenshotProperties.fromJson(Map<String, dynamic> json) => MapScreenshotProperties(
        longitude: ContactNameClass.fromJson(json['longitude']),
        latitude: ContactNameClass.fromJson(json['latitude']),
      );

  Map<String, dynamic> toJson() => {
        'longitude': longitude.toJson(),
        'latitude': latitude.toJson(),
      };
}
