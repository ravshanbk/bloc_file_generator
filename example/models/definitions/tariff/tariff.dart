import '../../swagger_model.dart';
import 'tariff_properties/tariff_properties.dart';

class Tariff {
  final List<String> required;
  final String type;
  final TariffProperties properties;

  Tariff({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory Tariff.fromJson(Map<String, dynamic> json) => Tariff(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: TariffProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}
