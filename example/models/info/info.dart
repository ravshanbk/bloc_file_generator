class Info {
  final String title;
  final String description;
  final String version;

  Info({
    required this.title,
    required this.description,
    required this.version,
  });

  factory Info.fromJson(Map<String, dynamic> json) => Info(
        title: json['title'],
        description: json['description'],
        version: json['version'],
      );

  Map<String, dynamic> toJson() => {
        'title': title,
        'description': description,
        'version': version,
      };
}
