class EquipmentClass {
  final String? title;
  final String type;
  final bool xNullable;
  final String? format;
  final int? maxLength;
  final bool? readOnly;
  final String? pattern;
  final int? minLength;

  EquipmentClass({
    this.title,
    required this.type,
    required this.xNullable,
    this.format,
    this.maxLength,
    this.readOnly,
    this.pattern,
    this.minLength,
  });

  factory EquipmentClass.fromJson(Map<String, dynamic> json) => EquipmentClass(
        title: json['title'],
        type: json['type'],
        xNullable: json['x-nullable'],
        format: json['format'],
        maxLength: json['maxLength'],
        readOnly: json['readOnly'],
        pattern: json['pattern'],
        minLength: json['minLength'],
      );

  Map<String, dynamic> toJson() => {
        'title': title,
        'type': type,
        'x-nullable': xNullable,
        'format': format,
        'maxLength': maxLength,
        'readOnly': readOnly,
        'pattern': pattern,
        'minLength': minLength,
      };
}
