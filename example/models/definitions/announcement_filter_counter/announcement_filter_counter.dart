import '../../swagger_model.dart';
import 'announcement_filter_counter_properties/announcement_filter_counter_properties.dart';

class AnnouncementFilterCounter {
  final List<String> required;
  final String type;
  final AnnouncementFilterCounterProperties properties;

  AnnouncementFilterCounter({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory AnnouncementFilterCounter.fromJson(Map<String, dynamic> json) => AnnouncementFilterCounter(
    required: List<String>.from(json['required'].map((x) => x)),
    type: json['type'],
    properties: AnnouncementFilterCounterProperties.fromJson(json['properties']),
  );

  Map<String, dynamic> toJson() => {
    'required': List<dynamic>.from(required.map((x) => x)),
    'type': type,
    'properties': properties.toJson(),
  };
}
