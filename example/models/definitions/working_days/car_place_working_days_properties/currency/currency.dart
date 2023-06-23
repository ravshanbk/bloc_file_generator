class Currency {
  final String title;
  final String type;
  final List<String> currencyEnum;
  final bool? xNullable;

  Currency({
    required this.title,
    required this.type,
    required this.currencyEnum,
    this.xNullable,
  });

  factory Currency.fromJson(Map<String, dynamic> json) => Currency(
        title: json['title'],
        type: json['type'],
        currencyEnum: List<String>.from(json['enum'].map((x) => x)),
        xNullable: json['x-nullable'],
      );

  Map<String, dynamic> toJson() => {
        'title': title,
        'type': type,
        'enum': List<dynamic>.from(currencyEnum.map((x) => x)),
        'x-nullable': xNullable,
      };
}
