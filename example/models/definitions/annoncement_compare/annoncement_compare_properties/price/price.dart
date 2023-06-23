class Price {
  final String title;
  final String type;
  final String format;

  Price({
    required this.title,
    required this.type,
    required this.format,
  });

  factory Price.fromJson(Map<String, dynamic> json) => Price(
        title: json['title'],
        type: json['type'],
        format: json['format'],
      );

  Map<String, dynamic> toJson() => {
        'title': title,
        'type': type,
        'format': format,
      };
}
