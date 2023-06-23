class ContactNameClass {
  final String title;
  final String type;
  final int? minLength;
  final int? maxLength;
  final bool? xNullable;
  final String? pattern;
  final String? format;

  ContactNameClass({
    required this.title,
    required this.type,
    this.minLength,
    this.maxLength,
    this.xNullable,
    this.pattern,
    this.format,
  });

  factory ContactNameClass.fromJson(Map<String, dynamic> json) => ContactNameClass(
    title: json['title'],
    type: json['type'],
    minLength: json['minLength'],
    maxLength: json['maxLength'],
    xNullable: json['x-nullable'],
    pattern: json['pattern'],
    format: json['format'],
  );

  Map<String, dynamic> toJson() => {
    'title': title,
    'type': type,
    'minLength': minLength,
    'maxLength': maxLength,
    'x-nullable': xNullable,
    'pattern': pattern,
    'format': format,
  };
}
