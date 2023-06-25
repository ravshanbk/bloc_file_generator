import '../../../../security_definations/basic/basic.dart';

class Options {
  final String type;
  final Basic items;
  final bool uniqueItems;

  Options({
    required this.type,
    required this.items,
    required this.uniqueItems,
  });

  factory Options.fromJson(Map<String, dynamic> json) => Options(
        type: json['type'],
        items: Basic.fromJson(json['items']),
        uniqueItems: json['uniqueItems'],
      );

  Map<String, dynamic> toJson() => {
        'type': type,
        'items': items.toJson(),
        'uniqueItems': uniqueItems,
      };
}
