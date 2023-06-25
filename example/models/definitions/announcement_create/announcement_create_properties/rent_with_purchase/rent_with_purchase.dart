import '../../../../paths/car_place_slug/path_class/patch_responses/the_201_class/dealer/dealer.dart';

class RentWithPurchase {
  final String type;
  final Dealer items;
  final List<dynamic> rentWithPurchaseDefault;

  RentWithPurchase({
    required this.type,
    required this.items,
    required this.rentWithPurchaseDefault,
  });

  factory RentWithPurchase.fromJson(Map<String, dynamic> json) => RentWithPurchase(
        type: json['type'],
        items: Dealer.fromJson(json['items']),
        rentWithPurchaseDefault: List<dynamic>.from(json['default'].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        'type': type,
        'items': items.toJson(),
        'default': List<dynamic>.from(rentWithPurchaseDefault.map((x) => x)),
      };
}
