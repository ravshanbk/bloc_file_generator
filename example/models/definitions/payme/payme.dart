import '../../swagger_model.dart';
import 'payme_properties/payme_properties.dart';

class Payme {
  final List<String> required;
  final String type;
  final PaymeProperties properties;

  Payme({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory Payme.fromJson(Map<String, dynamic> json) => Payme(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: PaymeProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}
