class Basic {
  final String type;

  Basic({
    required this.type,
  });

  factory Basic.fromJson(Map<String, dynamic> json) => Basic(
        type: json['type'],
      );

  Map<String, dynamic> toJson() => {
        'type': type,
      };
}
