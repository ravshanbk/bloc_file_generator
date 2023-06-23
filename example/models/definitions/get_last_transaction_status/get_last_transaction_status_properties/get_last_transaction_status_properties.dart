import '../../car_place_category/car_place_category_properties/is_camparison_class/is_camparison_class.dart';
import '../../working_days/car_place_working_days_properties/currency/currency.dart';

class GetLastTransactionStatusProperties {
  final IsComparisonClass id;
  final Currency status;

  GetLastTransactionStatusProperties({
    required this.id,
    required this.status,
  });

  factory GetLastTransactionStatusProperties.fromJson(Map<String, dynamic> json) => GetLastTransactionStatusProperties(
        id: IsComparisonClass.fromJson(json['id']),
        status: Currency.fromJson(json['status']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'status': status.toJson(),
      };
}
