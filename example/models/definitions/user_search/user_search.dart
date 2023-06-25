import 'user_search_properties/user_search_properties.dart';

class UserSearch {
  final List<String> required;
  final String type;
  final UserSearchProperties properties;

  UserSearch({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory UserSearch.fromJson(Map<String, dynamic> json) => UserSearch(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: UserSearchProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}
