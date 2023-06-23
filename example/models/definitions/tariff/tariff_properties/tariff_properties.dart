import '../../annoncement_compare/annoncement_compare_properties/price/price.dart';
import '../../car_place_category/car_place_category_properties/is_camparison_class/is_camparison_class.dart';
import '../../working_days/car_place_working_days_properties/currency/currency.dart';

class TariffProperties {
  final IsComparisonClass id;
  final Currency type;
  final Price amount;
  final IsComparisonClass typeInt;

  TariffProperties({
    required this.id,
    required this.type,
    required this.amount,
    required this.typeInt,
  });

  factory TariffProperties.fromJson(Map<String, dynamic> json) => TariffProperties(
        id: IsComparisonClass.fromJson(json['id']),
        type: Currency.fromJson(json['type']),
        amount: Price.fromJson(json['amount']),
        typeInt: IsComparisonClass.fromJson(json['type_int']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'type': type.toJson(),
        'amount': amount.toJson(),
        'type_int': typeInt.toJson(),
      };
}
