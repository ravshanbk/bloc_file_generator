import '../../swagger_model.dart';
import 'option_class_properties/option_class_properties.dart';

class OptionClass {
  final List<String> required;
  final String type;
  final OptionProperties properties;

  OptionClass({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory OptionClass.fromJson(Map<String, dynamic> json) => OptionClass(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: OptionProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}
