import '../../swagger_model.dart';
import 'announcement_of_day_properties/announcement_of_day_properties.dart';

class AnnouncementOfDay {
  final List<String> required;
  final String type;
  final AnnouncementOfDayProperties properties;

  AnnouncementOfDay({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory AnnouncementOfDay.fromJson(Map<String, dynamic> json) => AnnouncementOfDay(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: AnnouncementOfDayProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}
