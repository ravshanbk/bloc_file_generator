import '../../swagger_model.dart';
import 'static_page_porperties/static_page_porperties.dart';

class StaticPage {
  final List<String> required;
  final String type;
  final StaticPageProperties properties;

  StaticPage({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory StaticPage.fromJson(Map<String, dynamic> json) => StaticPage(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: StaticPageProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}
