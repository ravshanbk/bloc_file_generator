import '../../swagger_model.dart';
import 'list_stories_properties/list_stories_properties.dart';

class ListStories {
  final List<String> required;
  final String type;
  final ListStoriesProperties properties;

  ListStories({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory ListStories.fromJson(Map<String, dynamic> json) => ListStories(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: ListStoriesProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}
