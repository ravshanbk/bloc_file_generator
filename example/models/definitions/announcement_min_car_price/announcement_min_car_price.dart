import 'announcement_min_car_price_properties/announcement_min_car_price_properties.dart';

class AnnouncementMinCarPrice {
  final List<String> required;
  final String type;
  final AnnouncementMinCarPriceProperties properties;

  AnnouncementMinCarPrice({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory AnnouncementMinCarPrice.fromJson(Map<String, dynamic> json) => AnnouncementMinCarPrice(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: AnnouncementMinCarPriceProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}
