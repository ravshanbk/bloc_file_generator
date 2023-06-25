import 'popular_search_properties/popular_search_properties.dart';

class PopularSearch {
  final List<String> required;
  final String type;
  final PopularSearchProperties properties;

  PopularSearch({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory PopularSearch.fromJson(Map<String, dynamic> json) => PopularSearch(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: PopularSearchProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}
