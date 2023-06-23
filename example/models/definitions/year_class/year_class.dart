import '../../swagger_model.dart';
import 'year_properties/year_properties.dart';

class YearClass {
  final List<String> required;
  final String type;
  final YearProperties properties;

  YearClass({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory YearClass.fromJson(Map<String, dynamic> json) => YearClass(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: YearProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}
