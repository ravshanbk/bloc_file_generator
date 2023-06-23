import '../../product/product_properties/body_type/body_type.dart';
import '../../working_days/car_place_working_days_properties/currency/currency.dart';

class PaymeProperties {
  final BodyType id;
  final Currency method;
  final BodyType params;

  PaymeProperties({
    required this.id,
    required this.method,
    required this.params,
  });

  factory PaymeProperties.fromJson(Map<String, dynamic> json) => PaymeProperties(
        id: BodyType.fromJson(json['id']),
        method: Currency.fromJson(json['method']),
        params: BodyType.fromJson(json['params']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'method': method.toJson(),
        'params': params.toJson(),
      };
}
