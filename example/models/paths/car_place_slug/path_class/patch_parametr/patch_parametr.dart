import '../patch_responses/the_201_class/dealer/dealer.dart';

class PatchParameter {
  final String name;
  final String parameterIn;
  final bool required;
  final Dealer? schema;
  final String? type;
  final int? maxLength;
  final bool? xNullable;
  final String? format;

  PatchParameter({
    required this.name,
    required this.parameterIn,
    required this.required,
    this.schema,
    this.type,
    this.maxLength,
    this.xNullable,
    this.format,
  });

  factory PatchParameter.fromJson(Map<String, dynamic> json) => PatchParameter(
        name: json['name'],
        parameterIn: json['in'],
        required: json['required'],
        schema: json['schema'] == null ? null : Dealer.fromJson(json['schema']),
        type: json['type'],
        maxLength: json['maxLength'],
        xNullable: json['x-nullable'],
        format: json['format'],
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'in': parameterIn,
        'required': required,
        'schema': schema?.toJson(),
        'type': type,
        'maxLength': maxLength,
        'x-nullable': xNullable,
        'format': format,
      };
}
