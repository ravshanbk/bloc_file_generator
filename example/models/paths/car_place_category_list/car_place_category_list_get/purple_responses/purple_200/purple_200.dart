import '../../../../../swagger_model.dart';
import 'schema/schema.dart';

class Purple200 {
  final String description;
  final Schema schema;

  Purple200({
    required this.description,
    required this.schema,
  });

  factory Purple200.fromJson(Map<String, dynamic> json) => Purple200(
        description: json['description'],
        schema: Schema.fromJson(json['schema']),
      );

  Map<String, dynamic> toJson() => {
        'description': description,
        'schema': schema.toJson(),
      };
}
