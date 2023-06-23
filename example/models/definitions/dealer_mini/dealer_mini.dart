import '../../swagger_model.dart';
import 'dealer_mini_properties/dealer_mini_properties.dart';

class DealerMini {
  final List<String> required;
  final String type;
  final DealerMiniProperties properties;

  DealerMini({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory DealerMini.fromJson(Map<String, dynamic> json) => DealerMini(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: DealerMiniProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}
