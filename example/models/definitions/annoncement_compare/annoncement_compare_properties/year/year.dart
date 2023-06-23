class Year {
  final String title;
  final String type;
  final int maximum;
  final int minimum;
  final bool? xNullable;

  Year({
    required this.title,
    required this.type,
    required this.maximum,
    required this.minimum,
    this.xNullable,
  });

  factory Year.fromJson(Map<String, dynamic> json) => Year(
        title: json['title'],
        type: json['type'],
        maximum: json['maximum'],
        minimum: json['minimum'],
        xNullable: json['x-nullable'],
      );

  Map<String, dynamic> toJson() => {
        'title': title,
        'type': type,
        'maximum': maximum,
        'minimum': minimum,
        'x-nullable': xNullable,
      };
}
