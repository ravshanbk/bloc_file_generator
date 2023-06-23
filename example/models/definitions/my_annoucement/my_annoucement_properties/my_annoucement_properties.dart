import '../../../paths/car_announcement_counter/car_annoucement_counter_get/car_place_category_list_parametr/fluffy_responses/fluffy_200/rent_with_purchase_class/rent_with_purchase.dart';
import '../../../paths/car_place_category_list/car_place_category_list_get/purple_responses/purple_200/schema/schema_properties/equipment_class/equipment_class.dart';
import '../../../paths/car_place_slug/path_class/patch_responses/the_201_class/dealer/dealer.dart';
import '../../annoncement_compare/annoncement_compare_properties/price/price.dart';
import '../../annoncement_compare/annoncement_compare_properties/year/year.dart';
import '../../car_place_category/car_place_category_properties/contact_name_class/contact_name_class.dart';
import '../../car_place_category/car_place_category_properties/is_camparison_class/is_camparison_class.dart';
import '../../product/product_properties/body_type/body_type.dart';
import '../../working_days/car_place_working_days_properties/currency/currency.dart';

class MyAnnouncementProperties {
  final IsComparisonClass id;
  final Currency moderationStatus;
  final Dealer make;
  final Dealer model;
  final Dealer generation;
  final Dealer bodyType;
  final Dealer driveType;
  final Dealer engineType;
  final Dealer gearboxType;
  final Dealer modificationType;
  final ContactNameClass absoluteCarName;
  final Year year;
  final EquipmentClass color;
  final Currency licenceType;
  final Currency ownership;
  final Price purchaseDate;
  final EquipmentClass description;
  final BodyType isRegisteredLocally;
  final ContactNameClass contactName;
  final EquipmentClass contactEmail;
  final ContactNameClass contactPhone;
  final EquipmentClass contactAvailableFrom;
  final EquipmentClass contactAvailableTo;
  final Dealer region;
  final Dealer district;
  final EquipmentClass locationUrl;
  final BodyType price;
  final BodyType discount;
  final Currency currency;
  final Year distanceTraveled;
  final IsComparisonClass mileageImage;
  final ContactNameClass registrationVin;
  final ContactNameClass registrationPlate;
  final ContactNameClass registrationCertificate;
  final ContactNameClass registrationSerialNumber;
  final BodyType registeredInUzbekistan;
  final BodyType isNew;
  final RentWithPurchaseClass gallery;
  final RentWithPurchaseClass gallery360;
  final IsComparisonClass stats;
  final IsComparisonClass publishedAt;
  final EquipmentClass expiredAt;
  final IsComparisonClass isExpired;

  MyAnnouncementProperties({
    required this.id,
    required this.moderationStatus,
    required this.make,
    required this.model,
    required this.generation,
    required this.bodyType,
    required this.driveType,
    required this.engineType,
    required this.gearboxType,
    required this.modificationType,
    required this.absoluteCarName,
    required this.year,
    required this.color,
    required this.licenceType,
    required this.ownership,
    required this.purchaseDate,
    required this.description,
    required this.isRegisteredLocally,
    required this.contactName,
    required this.contactEmail,
    required this.contactPhone,
    required this.contactAvailableFrom,
    required this.contactAvailableTo,
    required this.region,
    required this.district,
    required this.locationUrl,
    required this.price,
    required this.discount,
    required this.currency,
    required this.distanceTraveled,
    required this.mileageImage,
    required this.registrationVin,
    required this.registrationPlate,
    required this.registrationCertificate,
    required this.registrationSerialNumber,
    required this.registeredInUzbekistan,
    required this.isNew,
    required this.gallery,
    required this.gallery360,
    required this.stats,
    required this.publishedAt,
    required this.expiredAt,
    required this.isExpired,
  });

  factory MyAnnouncementProperties.fromJson(Map<String, dynamic> json) => MyAnnouncementProperties(
        id: IsComparisonClass.fromJson(json['id']),
        moderationStatus: Currency.fromJson(json['moderation_status']),
        make: Dealer.fromJson(json['make']),
        model: Dealer.fromJson(json['model']),
        generation: Dealer.fromJson(json['generation']),
        bodyType: Dealer.fromJson(json['body_type']),
        driveType: Dealer.fromJson(json['drive_type']),
        engineType: Dealer.fromJson(json['engine_type']),
        gearboxType: Dealer.fromJson(json['gearbox_type']),
        modificationType: Dealer.fromJson(json['modification_type']),
        absoluteCarName: ContactNameClass.fromJson(json['absolute_car_name']),
        year: Year.fromJson(json['year']),
        color: EquipmentClass.fromJson(json['color']),
        licenceType: Currency.fromJson(json['licence_type']),
        ownership: Currency.fromJson(json['ownership']),
        purchaseDate: Price.fromJson(json['purchase_date']),
        description: EquipmentClass.fromJson(json['description']),
        isRegisteredLocally: BodyType.fromJson(json['is_registered_locally']),
        contactName: ContactNameClass.fromJson(json['contact_name']),
        contactEmail: EquipmentClass.fromJson(json['contact_email']),
        contactPhone: ContactNameClass.fromJson(json['contact_phone']),
        contactAvailableFrom: EquipmentClass.fromJson(json['contact_available_from']),
        contactAvailableTo: EquipmentClass.fromJson(json['contact_available_to']),
        region: Dealer.fromJson(json['region']),
        district: Dealer.fromJson(json['district']),
        locationUrl: EquipmentClass.fromJson(json['location_url']),
        price: BodyType.fromJson(json['price']),
        discount: BodyType.fromJson(json['discount']),
        currency: Currency.fromJson(json['currency']),
        distanceTraveled: Year.fromJson(json['distance_traveled']),
        mileageImage: IsComparisonClass.fromJson(json['mileage_image']),
        registrationVin: ContactNameClass.fromJson(json['registration_vin']),
        registrationPlate: ContactNameClass.fromJson(json['registration_plate']),
        registrationCertificate: ContactNameClass.fromJson(json['registration_certificate']),
        registrationSerialNumber: ContactNameClass.fromJson(json['registration_serial_number']),
        registeredInUzbekistan: BodyType.fromJson(json['registered_in_uzbekistan']),
        isNew: BodyType.fromJson(json['is_new']),
        gallery: RentWithPurchaseClass.fromJson(json['gallery']),
        gallery360: RentWithPurchaseClass.fromJson(json['gallery_360']),
        stats: IsComparisonClass.fromJson(json['stats']),
        publishedAt: IsComparisonClass.fromJson(json['published_at']),
        expiredAt: EquipmentClass.fromJson(json['expired_at']),
        isExpired: IsComparisonClass.fromJson(json['is_expired']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'moderation_status': moderationStatus.toJson(),
        'make': make.toJson(),
        'model': model.toJson(),
        'generation': generation.toJson(),
        'body_type': bodyType.toJson(),
        'drive_type': driveType.toJson(),
        'engine_type': engineType.toJson(),
        'gearbox_type': gearboxType.toJson(),
        'modification_type': modificationType.toJson(),
        'absolute_car_name': absoluteCarName.toJson(),
        'year': year.toJson(),
        'color': color.toJson(),
        'licence_type': licenceType.toJson(),
        'ownership': ownership.toJson(),
        'purchase_date': purchaseDate.toJson(),
        'description': description.toJson(),
        'is_registered_locally': isRegisteredLocally.toJson(),
        'contact_name': contactName.toJson(),
        'contact_email': contactEmail.toJson(),
        'contact_phone': contactPhone.toJson(),
        'contact_available_from': contactAvailableFrom.toJson(),
        'contact_available_to': contactAvailableTo.toJson(),
        'region': region.toJson(),
        'district': district.toJson(),
        'location_url': locationUrl.toJson(),
        'price': price.toJson(),
        'discount': discount.toJson(),
        'currency': currency.toJson(),
        'distance_traveled': distanceTraveled.toJson(),
        'mileage_image': mileageImage.toJson(),
        'registration_vin': registrationVin.toJson(),
        'registration_plate': registrationPlate.toJson(),
        'registration_certificate': registrationCertificate.toJson(),
        'registration_serial_number': registrationSerialNumber.toJson(),
        'registered_in_uzbekistan': registeredInUzbekistan.toJson(),
        'is_new': isNew.toJson(),
        'gallery': gallery.toJson(),
        'gallery_360': gallery360.toJson(),
        'stats': stats.toJson(),
        'published_at': publishedAt.toJson(),
        'expired_at': expiredAt.toJson(),
        'is_expired': isExpired.toJson(),
      };
}
