import 'very_long_properties/very_long_properties.dart';

class HomeAvtouzWebAutoBackendSrcEsAnnouncementsSerializersPyAnnouncementSerializer {
  final List<String> required;
  final String type;
  final HomeAvtouzWebAutoBackendSrcEsAnnouncementsSerializersPyAnnouncementSerializerProperties properties;

  HomeAvtouzWebAutoBackendSrcEsAnnouncementsSerializersPyAnnouncementSerializer({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory HomeAvtouzWebAutoBackendSrcEsAnnouncementsSerializersPyAnnouncementSerializer.fromJson(
          Map<String, dynamic> json) =>
      HomeAvtouzWebAutoBackendSrcEsAnnouncementsSerializersPyAnnouncementSerializer(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: HomeAvtouzWebAutoBackendSrcEsAnnouncementsSerializersPyAnnouncementSerializerProperties.fromJson(
            json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}
