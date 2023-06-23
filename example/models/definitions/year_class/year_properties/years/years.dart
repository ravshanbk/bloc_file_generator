import '../../../annoncement_compare/annoncement_compare_properties/year/year.dart';

class Years {
  final String type;
  final Year items;

  Years({
    required this.type,
    required this.items,
  });

  factory Years.fromJson(Map<String, dynamic> json) => Years(
        type: json['type'],
        items: Year.fromJson(json['items']),
      );

  Map<String, dynamic> toJson() => {
        'type': type,
        'items': items.toJson(),
      };
}
