import '../../swagger_model.dart';
import 'announcement_reels_properties/announcement_reels_properties.dart';

class AnnouncementReels {
  final List<String> required;
  final String type;
  final AnnouncementReelsProperties properties;

  AnnouncementReels({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory AnnouncementReels.fromJson(Map<String, dynamic> json) => AnnouncementReels(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: AnnouncementReelsProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}
