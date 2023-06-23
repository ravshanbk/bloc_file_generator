import '../../swagger_model.dart';
import 'my_annoucement_properties/my_annoucement_properties.dart';

class MyAnnouncement {
  final List<String> required;
  final String type;
  final MyAnnouncementProperties properties;

  MyAnnouncement({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory MyAnnouncement.fromJson(Map<String, dynamic> json) => MyAnnouncement(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: MyAnnouncementProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}
