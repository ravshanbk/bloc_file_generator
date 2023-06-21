import '../../../../../../car_place_slug/path_class/patch_responses/the_201_class/dealer/dealer.dart';

class RentWithPurchaseClass {
  final String type;
  final Dealer items;

  RentWithPurchaseClass({
    required this.type,
    required this.items,
  });

  factory RentWithPurchaseClass.fromJson(Map<String, dynamic> json) => RentWithPurchaseClass(
        type: json['type'],
        items: Dealer.fromJson(json['items']),
      );

  Map<String, dynamic> toJson() => {
        'type': type,
        'items': items.toJson(),
      };
}
