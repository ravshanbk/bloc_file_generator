import '../../../car_place_slug/path_class/patch_responses/the_201_class/dealer/dealer.dart';

class CarPlaceCategoryListParameter {
  final String name;
  final String parameterIn;
  final String? description;
  final bool? required;
  final String? type;
  final bool? explode;
  final Dealer? schema;
  final bool? xNullable;

  CarPlaceCategoryListParameter({
    required this.name,
    required this.parameterIn,
    this.description,
    this.required,
    this.type,
    this.explode,
    this.schema,
    this.xNullable,
  });

  factory CarPlaceCategoryListParameter.fromJson(Map<String, dynamic> json) => CarPlaceCategoryListParameter(
        name: json['name'],
        parameterIn: json['in'],
        description: json['description'],
        required: json['required'],
        type: json['type'],
        explode: json['explode'],
        schema: json['schema'] == null ? null : Dealer.fromJson(json['schema']),
        xNullable: json['x-nullable'],
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'in': parameterIn,
        'description': description,
        'required': required,
        'type': type,
        'explode': explode,
        'schema': schema?.toJson(),
        'x-nullable': xNullable,
      };
}
