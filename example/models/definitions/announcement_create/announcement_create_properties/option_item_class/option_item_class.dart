import '../../../../security_definations/basic/basic.dart';

class OptionItemsClass {
  final String type;
  final Basic items;
  final List<dynamic> optionDefault;

  OptionItemsClass({
    required this.type,
    required this.items,
    required this.optionDefault,
  });

  factory OptionItemsClass.fromJson(Map<String, dynamic> json) => OptionItemsClass(
        type: json['type'],
        items: Basic.fromJson(json['items']),
        optionDefault: List<dynamic>.from(json['default'].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        'type': type,
        'items': items.toJson(),
        'default': List<dynamic>.from(optionDefault.map((x) => x)),
      };
}
