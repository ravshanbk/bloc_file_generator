class IsComparisonClass {
  final String? title;
  final String type;
  final bool readOnly;
  final String? format;
  final bool? xNullable;
  final int? minLength;

  IsComparisonClass({
    this.title,
    required this.type,
    required this.readOnly,
    this.format,
    this.xNullable,
    this.minLength,
  });

  factory IsComparisonClass.fromJson(Map<String, dynamic> json) => IsComparisonClass(
        title: json['title'],
        type: json['type'],
        readOnly: json['readOnly'],
        format: json['format'],
        xNullable: json['x-nullable'],
        minLength: json['minLength'],
      );

  Map<String, dynamic> toJson() => {
        'title': title,
        'type': type,
        'readOnly': readOnly,
        'format': format,
        'x-nullable': xNullable,
        'minLength': minLength,
      };
}
