import 'announcement_adding_photo_instructions_properties/announcement_adding_photo_instructions_properties.dart';

class AnnouncementAddingPhotoInstructions {
  final List<String> required;
  final String type;
  final AnnouncementAddingPhotoInstructionsProperties properties;

  AnnouncementAddingPhotoInstructions({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory AnnouncementAddingPhotoInstructions.fromJson(Map<String, dynamic> json) =>
      AnnouncementAddingPhotoInstructions(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: AnnouncementAddingPhotoInstructionsProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}
