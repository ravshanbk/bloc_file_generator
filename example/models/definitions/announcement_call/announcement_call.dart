import '../../swagger_model.dart';
import 'announcement_call_properties/announcement_call_properties.dart';

class AnnouncementCall {
  final List<String> required;
  final String type;
  final AnnouncementCallProperties properties;

  AnnouncementCall({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory AnnouncementCall.fromJson(Map<String, dynamic> json) => AnnouncementCall(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: AnnouncementCallProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}
