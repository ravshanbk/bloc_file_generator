import '../../../paths/car_announcement_counter/car_annoucement_counter_get/car_place_category_list_parametr/fluffy_responses/fluffy_200/rent_with_purchase_class/rent_with_purchase.dart';
import '../../../paths/car_place_category_list/car_place_category_list_get/purple_responses/purple_200/schema/schema_properties/equipment_class/equipment_class.dart';
import '../../../paths/car_place_slug/path_class/patch_responses/the_201_class/dealer/dealer.dart';
import '../../annoncement_compare/annoncement_compare_properties/year/year.dart';
import '../../car_place_category/car_place_category_properties/contact_name_class/contact_name_class.dart';
import '../../car_place_category/car_place_category_properties/is_camparison_class/is_camparison_class.dart';
import '../../product/product_properties/body_type/body_type.dart';
import '../../working_days/car_place_working_days_properties/currency/currency.dart';

class UserProfileWishlistProperties {
  final IsComparisonClass id;
  final Dealer make;
  final Dealer model;
  final Dealer generation;
  final Dealer bodyType;
  final Dealer driveType;
  final Dealer engineType;
  final Dealer gearboxType;
  final Year year;
  final Dealer modificationType;
  final Dealer region;
  final Dealer district;
  final Dealer user;
  final Dealer dealer;
  final Currency licenceType;
  final Currency ownership;
  final EquipmentClass description;
  final BodyType isRegisteredLocally;
  final ContactNameClass contactName;
  final EquipmentClass contactEmail;
  final ContactNameClass contactPhone;
  final EquipmentClass longitude;
  final EquipmentClass latitude;
  final Year distanceTraveled;
  final BodyType registeredInUzbekistan;
  final Currency userType;
  final BodyType isNew;
  final BodyType price;
  final Currency currency;
  final RentWithPurchaseClass gallery;
  final ContactNameClass publishedAt;
  final Year viewsCount;
  final IsComparisonClass isComparison;
  final BodyType discount;
  final EquipmentClass contactAvailableFrom;
  final EquipmentClass contactAvailableTo;
  final BodyType isRentWithPurchase;
  final IsComparisonClass isWishlisted;

  UserProfileWishlistProperties({
    required this.id,
    required this.make,
    required this.model,
    required this.generation,
    required this.bodyType,
    required this.driveType,
    required this.engineType,
    required this.gearboxType,
    required this.year,
    required this.modificationType,
    required this.region,
    required this.district,
    required this.user,
    required this.dealer,
    required this.licenceType,
    required this.ownership,
    required this.description,
    required this.isRegisteredLocally,
    required this.contactName,
    required this.contactEmail,
    required this.contactPhone,
    required this.longitude,
    required this.latitude,
    required this.distanceTraveled,
    required this.registeredInUzbekistan,
    required this.userType,
    required this.isNew,
    required this.price,
    required this.currency,
    required this.gallery,
    required this.publishedAt,
    required this.viewsCount,
    required this.isComparison,
    required this.discount,
    required this.contactAvailableFrom,
    required this.contactAvailableTo,
    required this.isRentWithPurchase,
    required this.isWishlisted,
  });

  factory UserProfileWishlistProperties.fromJson(Map<String, dynamic> json) => UserProfileWishlistProperties(
        id: IsComparisonClass.fromJson(json['id']),
        make: Dealer.fromJson(json['make']),
        model: Dealer.fromJson(json['model']),
        generation: Dealer.fromJson(json['generation']),
        bodyType: Dealer.fromJson(json['body_type']),
        driveType: Dealer.fromJson(json['drive_type']),
        engineType: Dealer.fromJson(json['engine_type']),
        gearboxType: Dealer.fromJson(json['gearbox_type']),
        year: Year.fromJson(json['year']),
        modificationType: Dealer.fromJson(json['modification_type']),
        region: Dealer.fromJson(json['region']),
        district: Dealer.fromJson(json['district']),
        user: Dealer.fromJson(json['user']),
        dealer: Dealer.fromJson(json['dealer']),
        licenceType: Currency.fromJson(json['licence_type']),
        ownership: Currency.fromJson(json['ownership']),
        description: EquipmentClass.fromJson(json['description']),
        isRegisteredLocally: BodyType.fromJson(json['is_registered_locally']),
        contactName: ContactNameClass.fromJson(json['contact_name']),
        contactEmail: EquipmentClass.fromJson(json['contact_email']),
        contactPhone: ContactNameClass.fromJson(json['contact_phone']),
        longitude: EquipmentClass.fromJson(json['longitude']),
        latitude: EquipmentClass.fromJson(json['latitude']),
        distanceTraveled: Year.fromJson(json['distance_traveled']),
        registeredInUzbekistan: BodyType.fromJson(json['registered_in_uzbekistan']),
        userType: Currency.fromJson(json['user_type']),
        isNew: BodyType.fromJson(json['is_new']),
        price: BodyType.fromJson(json['price']),
        currency: Currency.fromJson(json['currency']),
        gallery: RentWithPurchaseClass.fromJson(json['gallery']),
        publishedAt: ContactNameClass.fromJson(json['published_at']),
        viewsCount: Year.fromJson(json['views_count']),
        isComparison: IsComparisonClass.fromJson(json['is_comparison']),
        discount: BodyType.fromJson(json['discount']),
        contactAvailableFrom: EquipmentClass.fromJson(json['contact_available_from']),
        contactAvailableTo: EquipmentClass.fromJson(json['contact_available_to']),
        isRentWithPurchase: BodyType.fromJson(json['is_rent_with_purchase']),
        isWishlisted: IsComparisonClass.fromJson(json['is_wishlisted']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'make': make.toJson(),
        'model': model.toJson(),
        'generation': generation.toJson(),
        'body_type': bodyType.toJson(),
        'drive_type': driveType.toJson(),
        'engine_type': engineType.toJson(),
        'gearbox_type': gearboxType.toJson(),
        'year': year.toJson(),
        'modification_type': modificationType.toJson(),
        'region': region.toJson(),
        'district': district.toJson(),
        'user': user.toJson(),
        'dealer': dealer.toJson(),
        'licence_type': licenceType.toJson(),
        'ownership': ownership.toJson(),
        'description': description.toJson(),
        'is_registered_locally': isRegisteredLocally.toJson(),
        'contact_name': contactName.toJson(),
        'contact_email': contactEmail.toJson(),
        'contact_phone': contactPhone.toJson(),
        'longitude': longitude.toJson(),
        'latitude': latitude.toJson(),
        'distance_traveled': distanceTraveled.toJson(),
        'registered_in_uzbekistan': registeredInUzbekistan.toJson(),
        'user_type': userType.toJson(),
        'is_new': isNew.toJson(),
        'price': price.toJson(),
        'currency': currency.toJson(),
        'gallery': gallery.toJson(),
        'published_at': publishedAt.toJson(),
        'views_count': viewsCount.toJson(),
        'is_comparison': isComparison.toJson(),
        'discount': discount.toJson(),
        'contact_available_from': contactAvailableFrom.toJson(),
        'contact_available_to': contactAvailableTo.toJson(),
        'is_rent_with_purchase': isRentWithPurchase.toJson(),
        'is_wishlisted': isWishlisted.toJson(),
      };
}
