class BodyType {
  final String title;
  final String type;

  BodyType({
    required this.title,
    required this.type,
  });

  factory BodyType.fromJson(Map<String, dynamic> json) => BodyType(
        title: json['title'],
        type: json['type'],
      );

  Map<String, dynamic> toJson() => {
        'title': title,
        'type': type,
      };
}
