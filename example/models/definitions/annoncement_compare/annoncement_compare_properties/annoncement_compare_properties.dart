import '../../../paths/car_announcement_counter/car_annoucement_counter_get/car_place_category_list_parametr/fluffy_responses/fluffy_200/rent_with_purchase_class/rent_with_purchase.dart';
import '../../../paths/car_place_category_list/car_place_category_list_get/purple_responses/purple_200/schema/schema_properties/equipment_class/equipment_class.dart';
import '../../../paths/car_place_slug/path_class/patch_responses/the_201_class/dealer/dealer.dart';
import '../../car_place_category/car_place_category_properties/contact_name_class/contact_name_class.dart';
import '../../car_place_category/car_place_category_properties/is_camparison_class/is_camparison_class.dart';
import '../../product/product_properties/body_type/body_type.dart';
import '../../working_days/car_place_working_days_properties/currency/currency.dart';
import 'price/price.dart';
import 'year/year.dart';

class AnnouncementCompareProperties {
  final IsComparisonClass id;
  final Currency licenceType;
  final Currency ownership;
  final BodyType isRegisteredLocally;
  final BodyType isNew;
  final Price price;
  final Currency currency;
  final ContactNameClass make;
  final ContactNameClass model;
  final IsComparisonClass generation;
  final IsComparisonClass bodyType;
  final ContactNameClass driveType;
  final IsComparisonClass engineType;
  final ContactNameClass gearboxType;
  final Year year;
  final Dealer color;
  final IsComparisonClass power;
  final IsComparisonClass volume;
  final RentWithPurchaseClass gallery;
  final IsComparisonClass user;
  final EquipmentClass contactAvailableFrom;
  final EquipmentClass contactAvailableTo;

  AnnouncementCompareProperties({
    required this.id,
    required this.licenceType,
    required this.ownership,
    required this.isRegisteredLocally,
    required this.isNew,
    required this.price,
    required this.currency,
    required this.make,
    required this.model,
    required this.generation,
    required this.bodyType,
    required this.driveType,
    required this.engineType,
    required this.gearboxType,
    required this.year,
    required this.color,
    required this.power,
    required this.volume,
    required this.gallery,
    required this.user,
    required this.contactAvailableFrom,
    required this.contactAvailableTo,
  });

  factory AnnouncementCompareProperties.fromJson(Map<String, dynamic> json) => AnnouncementCompareProperties(
        id: IsComparisonClass.fromJson(json['id']),
        licenceType: Currency.fromJson(json['licence_type']),
        ownership: Currency.fromJson(json['ownership']),
        isRegisteredLocally: BodyType.fromJson(json['is_registered_locally']),
        isNew: BodyType.fromJson(json['is_new']),
        price: Price.fromJson(json['price']),
        currency: Currency.fromJson(json['currency']),
        make: ContactNameClass.fromJson(json['make']),
        model: ContactNameClass.fromJson(json['model']),
        generation: IsComparisonClass.fromJson(json['generation']),
        bodyType: IsComparisonClass.fromJson(json['body_type']),
        driveType: ContactNameClass.fromJson(json['drive_type']),
        engineType: IsComparisonClass.fromJson(json['engine_type']),
        gearboxType: ContactNameClass.fromJson(json['gearbox_type']),
        year: Year.fromJson(json['year']),
        color: Dealer.fromJson(json['color']),
        power: IsComparisonClass.fromJson(json['power']),
        volume: IsComparisonClass.fromJson(json['volume']),
        gallery: RentWithPurchaseClass.fromJson(json['gallery']),
        user: IsComparisonClass.fromJson(json['user']),
        contactAvailableFrom: EquipmentClass.fromJson(json['contact_available_from']),
        contactAvailableTo: EquipmentClass.fromJson(json['contact_available_to']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'licence_type': licenceType.toJson(),
        'ownership': ownership.toJson(),
        'is_registered_locally': isRegisteredLocally.toJson(),
        'is_new': isNew.toJson(),
        'price': price.toJson(),
        'currency': currency.toJson(),
        'make': make.toJson(),
        'model': model.toJson(),
        'generation': generation.toJson(),
        'body_type': bodyType.toJson(),
        'drive_type': driveType.toJson(),
        'engine_type': engineType.toJson(),
        'gearbox_type': gearboxType.toJson(),
        'year': year.toJson(),
        'color': color.toJson(),
        'power': power.toJson(),
        'volume': volume.toJson(),
        'gallery': gallery.toJson(),
        'user': user.toJson(),
        'contact_available_from': contactAvailableFrom.toJson(),
        'contact_available_to': contactAvailableTo.toJson(),
      };
}
