import '../../working_days/car_place_working_days_properties/currency/currency.dart';

class CarDamagedPartProperties {
  final Currency propertiesPart;
  final Currency damageType;

  CarDamagedPartProperties({
    required this.propertiesPart,
    required this.damageType,
  });

  factory CarDamagedPartProperties.fromJson(Map<String, dynamic> json) => CarDamagedPartProperties(
        propertiesPart: Currency.fromJson(json['part']),
        damageType: Currency.fromJson(json['damage_type']),
      );

  Map<String, dynamic> toJson() => {
        'part': propertiesPart.toJson(),
        'damage_type': damageType.toJson(),
      };
}
