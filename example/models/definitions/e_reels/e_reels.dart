import '../../swagger_model.dart';
import 'like_reels_properties/like_reels_properties.dart';

class EReels {
  final List<String> required;
  final String type;
  final LikeReelsProperties properties;

  EReels({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory EReels.fromJson(Map<String, dynamic> json) => EReels(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: LikeReelsProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}
