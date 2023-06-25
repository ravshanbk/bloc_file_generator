import '../../car_place_category/car_place_category_properties/contact_name_class/contact_name_class.dart';

class PopularSearchProperties {
  final ContactNameClass searchText;

  PopularSearchProperties({
    required this.searchText,
  });

  factory PopularSearchProperties.fromJson(Map<String, dynamic> json) => PopularSearchProperties(
        searchText: ContactNameClass.fromJson(json['search_text']),
      );

  Map<String, dynamic> toJson() => {
        'search_text': searchText.toJson(),
      };
}
