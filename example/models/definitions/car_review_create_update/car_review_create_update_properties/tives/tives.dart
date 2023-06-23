import '../../../car_place_category/car_place_category_properties/contact_name_class/contact_name_class.dart';

class Tives {
  final String type;
  final ContactNameClass items;

  Tives({
    required this.type,
    required this.items,
  });

  factory Tives.fromJson(Map<String, dynamic> json) => Tives(
        type: json['type'],
        items: ContactNameClass.fromJson(json['items']),
      );

  Map<String, dynamic> toJson() => {
        'type': type,
        'items': items.toJson(),
      };
}
