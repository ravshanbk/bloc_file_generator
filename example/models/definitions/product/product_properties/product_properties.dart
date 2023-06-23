import '../../../paths/car_place_category_list/car_place_category_list_get/purple_responses/purple_200/schema/schema_properties/equipment_class/equipment_class.dart';
import '../../../paths/car_place_slug/path_class/patch_responses/the_201_class/dealer/dealer.dart';
import '../../../swagger_model.dart';
import '../../car_place_category/car_place_category_properties/contact_name_class/contact_name_class.dart';
import '../../car_place_category/car_place_category_properties/is_camparison_class/is_camparison_class.dart';
import 'body_type/body_type.dart';

class ProductProperties {
  final IsComparisonClass id;
  final ContactNameClass name;
  final BodyType carPlace;
  final Dealer category;
  final EquipmentClass price;
  final IsComparisonClass image;
  final BodyType isAgreedPrice;
  final BodyType isPopular;

  ProductProperties({
    required this.id,
    required this.name,
    required this.carPlace,
    required this.category,
    required this.price,
    required this.image,
    required this.isAgreedPrice,
    required this.isPopular,
  });

  factory ProductProperties.fromJson(Map<String, dynamic> json) => ProductProperties(
        id: IsComparisonClass.fromJson(json['id']),
        name: ContactNameClass.fromJson(json['name']),
        carPlace: BodyType.fromJson(json['car_place']),
        category: Dealer.fromJson(json['category']),
        price: EquipmentClass.fromJson(json['price']),
        image: IsComparisonClass.fromJson(json['image']),
        isAgreedPrice: BodyType.fromJson(json['is_agreed_price']),
        isPopular: BodyType.fromJson(json['is_popular']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'name': name.toJson(),
        'car_place': carPlace.toJson(),
        'category': category.toJson(),
        'price': price.toJson(),
        'image': image.toJson(),
        'is_agreed_price': isAgreedPrice.toJson(),
        'is_popular': isPopular.toJson(),
      };
}
