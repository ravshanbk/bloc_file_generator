class CarPlaceSlugParameter {
  final String name;
  final String parameterIn;
  final bool required;
  final String type;
  final String format;
  final String pattern;

  CarPlaceSlugParameter({
    required this.name,
    required this.parameterIn,
    required this.required,
    required this.type,
    required this.format,
    required this.pattern,
  });

  factory CarPlaceSlugParameter.fromJson(Map<String, dynamic> json) => CarPlaceSlugParameter(
        name: json['name'],
        parameterIn: json['in'],
        required: json['required'],
        type: json['type'],
        format: json['format'],
        pattern: json['pattern'],
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'in': parameterIn,
        'required': required,
        'type': type,
        'format': format,
        'pattern': pattern,
      };
}
