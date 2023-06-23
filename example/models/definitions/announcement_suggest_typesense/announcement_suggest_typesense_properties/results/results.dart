import '../../../../swagger_model.dart';
import 'items/items.dart';

class Results {
  final String type;
  final Items items;

  Results({
    required this.type,
    required this.items,
  });

  factory Results.fromJson(Map<String, dynamic> json) => Results(
        type: json['type'],
        items: Items.fromJson(json['items']),
      );

  Map<String, dynamic> toJson() => {
        'type': type,
        'items': items.toJson(),
      };
}
