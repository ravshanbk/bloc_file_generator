import '../../car_place_category/car_place_category_properties/contact_name_class/contact_name_class.dart';
import '../../car_place_category/car_place_category_properties/is_camparison_class/is_camparison_class.dart';

class RentCarMainPageProperties {
  final IsComparisonClass id;
  final ContactNameClass name;
  final IsComparisonClass rentList;

  RentCarMainPageProperties({
    required this.id,
    required this.name,
    required this.rentList,
  });

  factory RentCarMainPageProperties.fromJson(Map<String, dynamic> json) => RentCarMainPageProperties(
        id: IsComparisonClass.fromJson(json['id']),
        name: ContactNameClass.fromJson(json['name']),
        rentList: IsComparisonClass.fromJson(json['rent_list']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'name': name.toJson(),
        'rent_list': rentList.toJson(),
      };
}
