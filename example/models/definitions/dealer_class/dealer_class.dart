import '../../swagger_model.dart';
import 'dealer_properties/dealer_properties.dart';

class DealerClass {
  final List<String> required;
  final String type;
  final DealerProperties properties;

  DealerClass({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory DealerClass.fromJson(Map<String, dynamic> json) => DealerClass(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: DealerProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}
