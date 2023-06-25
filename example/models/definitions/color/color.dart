import 'color_properties/color_properties.dart';

class Color {
  final List<String> required;
  final String type;
  final ColorProperties properties;

  Color({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory Color.fromJson(Map<String, dynamic> json) => Color(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: ColorProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}
