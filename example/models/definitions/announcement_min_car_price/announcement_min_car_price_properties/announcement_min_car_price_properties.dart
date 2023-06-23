import '../../product/product_properties/body_type/body_type.dart';
import '../../working_days/car_place_working_days_properties/currency/currency.dart';

class AnnouncementMinCarPriceProperties {
  final BodyType make;
  final BodyType model;
  final Currency currency;

  AnnouncementMinCarPriceProperties({
    required this.make,
    required this.model,
    required this.currency,
  });

  factory AnnouncementMinCarPriceProperties.fromJson(Map<String, dynamic> json) => AnnouncementMinCarPriceProperties(
        make: BodyType.fromJson(json['make']),
        model: BodyType.fromJson(json['model']),
        currency: Currency.fromJson(json['currency']),
      );

  Map<String, dynamic> toJson() => {
        'make': make.toJson(),
        'model': model.toJson(),
        'currency': currency.toJson(),
      };
}
