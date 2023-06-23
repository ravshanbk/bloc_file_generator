class Slug {
  final String title;
  final String type;
  final String format;
  final String pattern;
  final bool readOnly;
  final int minLength;

  Slug({
    required this.title,
    required this.type,
    required this.format,
    required this.pattern,
    required this.readOnly,
    required this.minLength,
  });

  factory Slug.fromJson(Map<String, dynamic> json) => Slug(
    title: json['title'],
    type: json['type'],
    format: json['format'],
    pattern: json['pattern'],
    readOnly: json['readOnly'],
    minLength: json['minLength'],
  );

  Map<String, dynamic> toJson() => {
    'title': title,
    'type': type,
    'format': format,
    'pattern': pattern,
    'readOnly': readOnly,
    'minLength': minLength,
  };
}
