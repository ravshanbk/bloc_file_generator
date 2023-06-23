import '../../../paths/car_announcement_counter/car_annoucement_counter_get/car_place_category_list_parametr/fluffy_responses/fluffy_200/rent_with_purchase_class/rent_with_purchase.dart';
import '../../../paths/car_place_category_list/car_place_category_list_get/purple_responses/purple_200/schema/schema_properties/equipment_class/equipment_class.dart';
import '../../../paths/car_place_slug/path_class/patch_responses/the_201_class/dealer/dealer.dart';
import '../../../swagger_model.dart';
import '../../annoncement_compare/annoncement_compare_properties/year/year.dart';
import '../../car_place_category/car_place_category_properties/contact_name_class/contact_name_class.dart';
import '../../car_place_category/car_place_category_properties/is_camparison_class/is_camparison_class.dart';
import '../../product/product_properties/body_type/body_type.dart';
import '../../working_days/car_place_working_days_properties/currency/currency.dart';

class AnnouncementProperties {
  final IsComparisonClass id;
  final ContactNameClass make;
  final ContactNameClass model;
  final Dealer generation;
  final RentWithPurchaseClass gallery;
  final RentWithPurchaseClass gallery360;
  final Dealer region;
  final EquipmentClass description;
  final Year year;
  final IsComparisonClass viewsCount;
  final EquipmentClass longitude;
  final EquipmentClass latitude;
  final IsComparisonClass user;
  final BodyType price;
  final IsComparisonClass isComparison;
  final BodyType discount;
  final EquipmentClass contactAvailableFrom;
  final EquipmentClass contactAvailableTo;
  final BodyType isNew;
  final Dealer dealer;
  final Currency userType;
  final Currency currency;
  final IsComparisonClass publishedAt;
  final IsComparisonClass createdAt;
  final EquipmentClass expiredAt;
  final Dealer district;
  final BodyType isRentWithPurchase;
  final RentWithPurchaseClass rentWithPurchase;
  final EquipmentClass equipment;
  final Options options;
  final Dealer gasEquipment;
  final IsComparisonClass isWishlisted;

  AnnouncementProperties({
    required this.id,
    required this.make,
    required this.model,
    required this.generation,
    required this.gallery,
    required this.gallery360,
    required this.region,
    required this.description,
    required this.year,
    required this.viewsCount,
    required this.longitude,
    required this.latitude,
    required this.user,
    required this.price,
    required this.isComparison,
    required this.discount,
    required this.contactAvailableFrom,
    required this.contactAvailableTo,
    required this.isNew,
    required this.dealer,
    required this.userType,
    required this.currency,
    required this.publishedAt,
    required this.createdAt,
    required this.expiredAt,
    required this.district,
    required this.isRentWithPurchase,
    required this.rentWithPurchase,
    required this.equipment,
    required this.options,
    required this.gasEquipment,
    required this.isWishlisted,
  });

  factory AnnouncementProperties.fromJson(Map<String, dynamic> json) => AnnouncementProperties(
        id: IsComparisonClass.fromJson(json['id']),
        make: ContactNameClass.fromJson(json['make']),
        model: ContactNameClass.fromJson(json['model']),
        generation: Dealer.fromJson(json['generation']),
        gallery: RentWithPurchaseClass.fromJson(json['gallery']),
        gallery360: RentWithPurchaseClass.fromJson(json['gallery_360']),
        region: Dealer.fromJson(json['region']),
        description: EquipmentClass.fromJson(json['description']),
        year: Year.fromJson(json['year']),
        viewsCount: IsComparisonClass.fromJson(json['views_count']),
        longitude: EquipmentClass.fromJson(json['longitude']),
        latitude: EquipmentClass.fromJson(json['latitude']),
        user: IsComparisonClass.fromJson(json['user']),
        price: BodyType.fromJson(json['price']),
        isComparison: IsComparisonClass.fromJson(json['is_comparison']),
        discount: BodyType.fromJson(json['discount']),
        contactAvailableFrom: EquipmentClass.fromJson(json['contact_available_from']),
        contactAvailableTo: EquipmentClass.fromJson(json['contact_available_to']),
        isNew: BodyType.fromJson(json['is_new']),
        dealer: Dealer.fromJson(json['dealer']),
        userType: Currency.fromJson(json['user_type']),
        currency: Currency.fromJson(json['currency']),
        publishedAt: IsComparisonClass.fromJson(json['published_at']),
        createdAt: IsComparisonClass.fromJson(json['created_at']),
        expiredAt: EquipmentClass.fromJson(json['expired_at']),
        district: Dealer.fromJson(json['district']),
        isRentWithPurchase: BodyType.fromJson(json['is_rent_with_purchase']),
        rentWithPurchase: RentWithPurchaseClass.fromJson(json['rent_with_purchase']),
        equipment: EquipmentClass.fromJson(json['equipment']),
        options: Options.fromJson(json['options']),
        gasEquipment: Dealer.fromJson(json['gas_equipment']),
        isWishlisted: IsComparisonClass.fromJson(json['is_wishlisted']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'make': make.toJson(),
        'model': model.toJson(),
        'generation': generation.toJson(),
        'gallery': gallery.toJson(),
        'gallery_360': gallery360.toJson(),
        'region': region.toJson(),
        'description': description.toJson(),
        'year': year.toJson(),
        'views_count': viewsCount.toJson(),
        'longitude': longitude.toJson(),
        'latitude': latitude.toJson(),
        'user': user.toJson(),
        'price': price.toJson(),
        'is_comparison': isComparison.toJson(),
        'discount': discount.toJson(),
        'contact_available_from': contactAvailableFrom.toJson(),
        'contact_available_to': contactAvailableTo.toJson(),
        'is_new': isNew.toJson(),
        'dealer': dealer.toJson(),
        'user_type': userType.toJson(),
        'currency': currency.toJson(),
        'published_at': publishedAt.toJson(),
        'created_at': createdAt.toJson(),
        'expired_at': expiredAt.toJson(),
        'district': district.toJson(),
        'is_rent_with_purchase': isRentWithPurchase.toJson(),
        'rent_with_purchase': rentWithPurchase.toJson(),
        'equipment': equipment.toJson(),
        'options': options.toJson(),
        'gas_equipment': gasEquipment.toJson(),
        'is_wishlisted': isWishlisted.toJson(),
      };
}
