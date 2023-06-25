import '../../car_place_category/car_place_category_properties/contact_name_class/contact_name_class.dart';
import '../../car_place_category/car_place_category_properties/is_camparison_class/is_camparison_class.dart';

class UserSearchProperties {
  final IsComparisonClass id;
  final ContactNameClass searchText;

  UserSearchProperties({
    required this.id,
    required this.searchText,
  });

  factory UserSearchProperties.fromJson(Map<String, dynamic> json) => UserSearchProperties(
        id: IsComparisonClass.fromJson(json['id']),
        searchText: ContactNameClass.fromJson(json['search_text']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'search_text': searchText.toJson(),
      };
}
