import '../../swagger_model.dart';
import 'announcemnt_option_properties/announcemnt_option_properties.dart';

class MentOption {
  final List<String> required;
  final String type;
  final AnnouncementOptionProperties properties;

  MentOption({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory MentOption.fromJson(Map<String, dynamic> json) => MentOption(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: AnnouncementOptionProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}
