import '../../swagger_model.dart';
import 'make_properties/make_properties.dart';

class Make {
  final List<String> required;
  final String type;
  final MakeProperties properties;

  Make({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory Make.fromJson(Map<String, dynamic> json) => Make(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: MakeProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}
