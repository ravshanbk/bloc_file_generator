class Items {
  final String type;
  final int minLength;

  Items({
    required this.type,
    required this.minLength,
  });

  factory Items.fromJson(Map<String, dynamic> json) => Items(
    type: json['type'],
    minLength: json['minLength'],
  );

  Map<String, dynamic> toJson() => {
    'type': type,
    'minLength': minLength,
  };
}
