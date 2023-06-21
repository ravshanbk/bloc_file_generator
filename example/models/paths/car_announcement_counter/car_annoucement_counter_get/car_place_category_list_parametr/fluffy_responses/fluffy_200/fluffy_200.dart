import '../../../../../../swagger_model.dart';
import 'rent_with_purchase_class/rent_with_purchase.dart';

class Fluffy200 {
  final String description;
  final RentWithPurchaseClass schema;

  Fluffy200({
    required this.description,
    required this.schema,
  });

  factory Fluffy200.fromJson(Map<String, dynamic> json) => Fluffy200(
        description: json['description'],
        schema: RentWithPurchaseClass.fromJson(json['schema']),
      );

  Map<String, dynamic> toJson() => {
        'description': description,
        'schema': schema.toJson(),
      };
}
