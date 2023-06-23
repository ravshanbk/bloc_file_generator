import '../../../product/product_properties/body_type/body_type.dart';

class AdditionalServices {
  final String type;
  final BodyType items;
  final bool uniqueItems;

  AdditionalServices({
    required this.type,
    required this.items,
    required this.uniqueItems,
  });

  factory AdditionalServices.fromJson(Map<String, dynamic> json) => AdditionalServices(
        type: json['type'],
        items: BodyType.fromJson(json['items']),
        uniqueItems: json['uniqueItems'],
      );

  Map<String, dynamic> toJson() => {
        'type': type,
        'items': items.toJson(),
        'uniqueItems': uniqueItems,
      };
}
