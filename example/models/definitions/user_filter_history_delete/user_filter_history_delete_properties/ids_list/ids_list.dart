import '../../../../security_definations/basic/basic.dart';

class IdsList {
  final String type;
  final Basic items;

  IdsList({
    required this.type,
    required this.items,
  });

  factory IdsList.fromJson(Map<String, dynamic> json) => IdsList(
        type: json['type'],
        items: Basic.fromJson(json['items']),
      );

  Map<String, dynamic> toJson() => {
        'type': type,
        'items': items.toJson(),
      };
}
