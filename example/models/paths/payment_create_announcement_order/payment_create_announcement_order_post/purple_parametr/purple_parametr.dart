class PurpleParameter {
  final String name;
  final String parameterIn;
  final bool required;
  final String type;
  final bool? xNullable;
  final List<String>? parameterEnum;
  final int? maxLength;
  final String? format;

  PurpleParameter({
    required this.name,
    required this.parameterIn,
    required this.required,
    required this.type,
    this.xNullable,
    this.parameterEnum,
    this.maxLength,
    this.format,
  });

  factory PurpleParameter.fromJson(Map<String, dynamic> json) => PurpleParameter(
        name: json['name'],
        parameterIn: json['in'],
        required: json['required'],
        type: json['type'],
        xNullable: json['x-nullable'],
        parameterEnum: json['enum'] == null ? [] : List<String>.from(json['enum']!.map((x) => x)),
        maxLength: json['maxLength'],
        format: json['format'],
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'in': parameterIn,
        'required': required,
        'type': type,
        'x-nullable': xNullable,
        'enum': parameterEnum == null ? [] : List<dynamic>.from(parameterEnum!.map((x) => x)),
        'maxLength': maxLength,
        'format': format,
      };
}
