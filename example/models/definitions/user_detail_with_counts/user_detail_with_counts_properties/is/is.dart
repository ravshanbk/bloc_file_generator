class Is {
  final String title;
  final String description;
  final String type;

  Is({
    required this.title,
    required this.description,
    required this.type,
  });

  factory Is.fromJson(Map<String, dynamic> json) => Is(
        title: json['title'],
        description: json['description'],
        type: json['type'],
      );

  Map<String, dynamic> toJson() => {
        'title': title,
        'description': description,
        'type': type,
      };
}
