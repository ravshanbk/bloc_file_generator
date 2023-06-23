import '../../../swagger_model.dart';
import 'currency/currency.dart';

class CarPlaceWorkingDaysProperties {
  final Currency dayOfWeek;

  CarPlaceWorkingDaysProperties({
    required this.dayOfWeek,
  });

  factory CarPlaceWorkingDaysProperties.fromJson(Map<String, dynamic> json) => CarPlaceWorkingDaysProperties(
    dayOfWeek: Currency.fromJson(json['day_of_week']),
  );

  Map<String, dynamic> toJson() => {
    'day_of_week': dayOfWeek.toJson(),
  };
}
