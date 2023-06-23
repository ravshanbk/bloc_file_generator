import '../image/default_class/default_class.dart';
import 'purple_properties/purple_properties.dart';

class DefinitionsRentWithPurchase {
  final String type;
  final PurpleProperties properties;
  final DefaultClass rentWithPurchaseDefault;

  DefinitionsRentWithPurchase({
    required this.type,
    required this.properties,
    required this.rentWithPurchaseDefault,
  });

  factory DefinitionsRentWithPurchase.fromJson(Map<String, dynamic> json) => DefinitionsRentWithPurchase(
        type: json['type'],
        properties: PurpleProperties.fromJson(json['properties']),
        rentWithPurchaseDefault: DefaultClass.fromJson(json['default']),
      );

  Map<String, dynamic> toJson() => {
        'type': type,
        'properties': properties.toJson(),
        'default': rentWithPurchaseDefault.toJson(),
      };
}
