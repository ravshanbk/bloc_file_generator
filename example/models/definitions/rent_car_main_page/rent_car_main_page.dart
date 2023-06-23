import '../../swagger_model.dart';
import 'rent_car_main_page_properties/rent_car_main_page_properties.dart';

class RentCarMainPage {
  final List<String> required;
  final String type;
  final RentCarMainPageProperties properties;

  RentCarMainPage({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory RentCarMainPage.fromJson(Map<String, dynamic> json) => RentCarMainPage(
    required: List<String>.from(json['required'].map((x) => x)),
    type: json['type'],
    properties: RentCarMainPageProperties.fromJson(json['properties']),
  );

  Map<String, dynamic> toJson() => {
    'required': List<dynamic>.from(required.map((x) => x)),
    'type': type,
    'properties': properties.toJson(),
  };
}
