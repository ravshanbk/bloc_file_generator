import '../../swagger_model.dart';
import 'category_properties/category_properties.dart';

class Category {
  final List<String> required;
  final String type;
  final CategoryProperties properties;

  Category({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: CategoryProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}
