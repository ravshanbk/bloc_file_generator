import '../../swagger_model.dart';
import 'map_screen_shot_properties/map_screen_shot_properties.dart';

class MapScreenshot {
  final List<String> required;
  final String type;
  final MapScreenshotProperties properties;

  MapScreenshot({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory MapScreenshot.fromJson(Map<String, dynamic> json) => MapScreenshot(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: MapScreenshotProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}
