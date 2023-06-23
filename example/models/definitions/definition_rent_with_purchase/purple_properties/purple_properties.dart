import '../../annoncement_compare/annoncement_compare_properties/price/price.dart';
import '../../annoncement_compare/annoncement_compare_properties/year/year.dart';
import '../../car_place_category/car_place_category_properties/is_camparison_class/is_camparison_class.dart';

class PurpleProperties {
  final IsComparisonClass id;
  final Price prepayment;
  final Year rentalPeriod;
  final Price monthlyPayment;

  PurpleProperties({
    required this.id,
    required this.prepayment,
    required this.rentalPeriod,
    required this.monthlyPayment,
  });

  factory PurpleProperties.fromJson(Map<String, dynamic> json) => PurpleProperties(
        id: IsComparisonClass.fromJson(json['id']),
        prepayment: Price.fromJson(json['prepayment']),
        rentalPeriod: Year.fromJson(json['rental_period']),
        monthlyPayment: Price.fromJson(json['monthly_payment']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'prepayment': prepayment.toJson(),
        'rental_period': rentalPeriod.toJson(),
        'monthly_payment': monthlyPayment.toJson(),
      };
}
