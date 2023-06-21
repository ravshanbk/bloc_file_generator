class Security {
  final List<dynamic> basic;

  Security({
    required this.basic,
  });

  factory Security.fromJson(Map<String, dynamic> json) => Security(
        basic: List<dynamic>.from(json['Basic'].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        'Basic': List<dynamic>.from(basic.map((x) => x)),
      };
}
