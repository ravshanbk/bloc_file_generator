import '../../../../../swagger_model.dart';
import 'dealer/dealer.dart';

class The201Class {
  final String description;
  final Dealer schema;

  The201Class({
    required this.description,
    required this.schema,
  });

  factory The201Class.fromJson(Map<String, dynamic> json) => The201Class(
        description: json['description'],
        schema: Dealer.fromJson(json['schema']),
      );

  Map<String, dynamic> toJson() => {
        'description': description,
        'schema': schema.toJson(),
      };
}
