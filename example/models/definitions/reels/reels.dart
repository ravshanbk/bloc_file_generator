import '../../swagger_model.dart';
import 'reels_properties/reels_properties.dart';

class Reels {
  final List<String> required;
  final String type;
  final DetailReelsProperties properties;

  Reels({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory Reels.fromJson(Map<String, dynamic> json) => Reels(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: DetailReelsProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}
