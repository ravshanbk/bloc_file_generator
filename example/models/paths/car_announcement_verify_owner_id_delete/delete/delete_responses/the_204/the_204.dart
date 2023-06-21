class The204 {
  final String description;

  The204({
    required this.description,
  });

  factory The204.fromJson(Map<String, dynamic> json) => The204(
        description: json['description'],
      );

  Map<String, dynamic> toJson() => {
        'description': description,
      };
}
