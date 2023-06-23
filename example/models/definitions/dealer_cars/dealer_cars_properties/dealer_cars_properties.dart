import '../../../paths/car_announcement_counter/car_annoucement_counter_get/car_place_category_list_parametr/fluffy_responses/fluffy_200/rent_with_purchase_class/rent_with_purchase.dart';
import '../../../paths/car_place_category_list/car_place_category_list_get/purple_responses/purple_200/schema/schema_properties/equipment_class/equipment_class.dart';
import '../../../paths/car_place_slug/path_class/patch_responses/the_201_class/dealer/dealer.dart';
import '../../annoncement_compare/annoncement_compare_properties/price/price.dart';
import '../../annoncement_compare/annoncement_compare_properties/year/year.dart';
import '../../car_place_category/car_place_category_properties/contact_name_class/contact_name_class.dart';
import '../../car_place_category/car_place_category_properties/is_camparison_class/is_camparison_class.dart';
import '../../product/product_properties/body_type/body_type.dart';
import '../../working_days/car_place_working_days_properties/currency/currency.dart';

class DealerCarsProperties {
  final IsComparisonClass id;
  final Dealer region;
  final RentWithPurchaseClass gallery;
  final IsComparisonClass isComparison;
  final Dealer user;
  final Dealer dealer;
  final Dealer make;
  final Dealer model;
  final Year viewsCount;
  final IsComparisonClass createdAt;
  final IsComparisonClass updatedAt;
  final Currency moderationStatus;
  final Year year;
  final ContactNameClass absoluteCarName;
  final Currency licenceType;
  final Currency ownership;
  final Price purchaseDate;
  final EquipmentClass description;
  final EquipmentClass descriptionEn;
  final EquipmentClass descriptionUz;
  final EquipmentClass descriptionRu;
  final BodyType isRegisteredLocally;
  final ContactNameClass contactName;
  final EquipmentClass contactEmail;
  final ContactNameClass contactPhone;
  final EquipmentClass contactAvailableFrom;
  final EquipmentClass contactAvailableTo;
  final EquipmentClass locationUrl;
  final EquipmentClass longitude;
  final EquipmentClass latitude;
  final Year distanceTraveled;
  final IsComparisonClass mileageImage;
  final ContactNameClass registrationVin;
  final ContactNameClass registrationPlate;
  final ContactNameClass registrationCertificate;
  final ContactNameClass registrationSerialNumber;
  final BodyType registeredInUzbekistan;
  final Currency userType;
  final BodyType isNew;
  final Price price;
  final EquipmentClass discount;
  final Currency currency;
  final IsComparisonClass publishedAt;
  final Year contactViewsCount;
  final EquipmentClass expiredAt;
  final EquipmentClass topExpiresAt;
  final BodyType isRentWithPurchase;
  final BodyType isFaceToFaceCheck;
  final EquipmentClass generation;
  final EquipmentClass bodyType;
  final EquipmentClass driveType;
  final EquipmentClass engineType;
  final EquipmentClass gearboxType;
  final EquipmentClass modificationType;
  final EquipmentClass equipment;
  final EquipmentClass gasEquipment;
  final EquipmentClass color;
  final EquipmentClass district;
  final IsComparisonClass isWishlisted;

  DealerCarsProperties({
    required this.id,
    required this.region,
    required this.gallery,
    required this.isComparison,
    required this.user,
    required this.dealer,
    required this.make,
    required this.model,
    required this.viewsCount,
    required this.createdAt,
    required this.updatedAt,
    required this.moderationStatus,
    required this.year,
    required this.absoluteCarName,
    required this.licenceType,
    required this.ownership,
    required this.purchaseDate,
    required this.description,
    required this.descriptionEn,
    required this.descriptionUz,
    required this.descriptionRu,
    required this.isRegisteredLocally,
    required this.contactName,
    required this.contactEmail,
    required this.contactPhone,
    required this.contactAvailableFrom,
    required this.contactAvailableTo,
    required this.locationUrl,
    required this.longitude,
    required this.latitude,
    required this.distanceTraveled,
    required this.mileageImage,
    required this.registrationVin,
    required this.registrationPlate,
    required this.registrationCertificate,
    required this.registrationSerialNumber,
    required this.registeredInUzbekistan,
    required this.userType,
    required this.isNew,
    required this.price,
    required this.discount,
    required this.currency,
    required this.publishedAt,
    required this.contactViewsCount,
    required this.expiredAt,
    required this.topExpiresAt,
    required this.isRentWithPurchase,
    required this.isFaceToFaceCheck,
    required this.generation,
    required this.bodyType,
    required this.driveType,
    required this.engineType,
    required this.gearboxType,
    required this.modificationType,
    required this.equipment,
    required this.gasEquipment,
    required this.color,
    required this.district,
    required this.isWishlisted,
  });

  factory DealerCarsProperties.fromJson(Map<String, dynamic> json) => DealerCarsProperties(
        id: IsComparisonClass.fromJson(json['id']),
        region: Dealer.fromJson(json['region']),
        gallery: RentWithPurchaseClass.fromJson(json['gallery']),
        isComparison: IsComparisonClass.fromJson(json['is_comparison']),
        user: Dealer.fromJson(json['user']),
        dealer: Dealer.fromJson(json['dealer']),
        make: Dealer.fromJson(json['make']),
        model: Dealer.fromJson(json['model']),
        viewsCount: Year.fromJson(json['views_count']),
        createdAt: IsComparisonClass.fromJson(json['created_at']),
        updatedAt: IsComparisonClass.fromJson(json['updated_at']),
        moderationStatus: Currency.fromJson(json['moderation_status']),
        year: Year.fromJson(json['year']),
        absoluteCarName: ContactNameClass.fromJson(json['absolute_car_name']),
        licenceType: Currency.fromJson(json['licence_type']),
        ownership: Currency.fromJson(json['ownership']),
        purchaseDate: Price.fromJson(json['purchase_date']),
        description: EquipmentClass.fromJson(json['description']),
        descriptionEn: EquipmentClass.fromJson(json['description_en']),
        descriptionUz: EquipmentClass.fromJson(json['description_uz']),
        descriptionRu: EquipmentClass.fromJson(json['description_ru']),
        isRegisteredLocally: BodyType.fromJson(json['is_registered_locally']),
        contactName: ContactNameClass.fromJson(json['contact_name']),
        contactEmail: EquipmentClass.fromJson(json['contact_email']),
        contactPhone: ContactNameClass.fromJson(json['contact_phone']),
        contactAvailableFrom: EquipmentClass.fromJson(json['contact_available_from']),
        contactAvailableTo: EquipmentClass.fromJson(json['contact_available_to']),
        locationUrl: EquipmentClass.fromJson(json['location_url']),
        longitude: EquipmentClass.fromJson(json['longitude']),
        latitude: EquipmentClass.fromJson(json['latitude']),
        distanceTraveled: Year.fromJson(json['distance_traveled']),
        mileageImage: IsComparisonClass.fromJson(json['mileage_image']),
        registrationVin: ContactNameClass.fromJson(json['registration_vin']),
        registrationPlate: ContactNameClass.fromJson(json['registration_plate']),
        registrationCertificate: ContactNameClass.fromJson(json['registration_certificate']),
        registrationSerialNumber: ContactNameClass.fromJson(json['registration_serial_number']),
        registeredInUzbekistan: BodyType.fromJson(json['registered_in_uzbekistan']),
        userType: Currency.fromJson(json['user_type']),
        isNew: BodyType.fromJson(json['is_new']),
        price: Price.fromJson(json['price']),
        discount: EquipmentClass.fromJson(json['discount']),
        currency: Currency.fromJson(json['currency']),
        publishedAt: IsComparisonClass.fromJson(json['published_at']),
        contactViewsCount: Year.fromJson(json['contact_views_count']),
        expiredAt: EquipmentClass.fromJson(json['expired_at']),
        topExpiresAt: EquipmentClass.fromJson(json['top_expires_at']),
        isRentWithPurchase: BodyType.fromJson(json['is_rent_with_purchase']),
        isFaceToFaceCheck: BodyType.fromJson(json['is_face_to_face_check']),
        generation: EquipmentClass.fromJson(json['generation']),
        bodyType: EquipmentClass.fromJson(json['body_type']),
        driveType: EquipmentClass.fromJson(json['drive_type']),
        engineType: EquipmentClass.fromJson(json['engine_type']),
        gearboxType: EquipmentClass.fromJson(json['gearbox_type']),
        modificationType: EquipmentClass.fromJson(json['modification_type']),
        equipment: EquipmentClass.fromJson(json['equipment']),
        gasEquipment: EquipmentClass.fromJson(json['gas_equipment']),
        color: EquipmentClass.fromJson(json['color']),
        district: EquipmentClass.fromJson(json['district']),
        isWishlisted: IsComparisonClass.fromJson(json['is_wishlisted']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'region': region.toJson(),
        'gallery': gallery.toJson(),
        'is_comparison': isComparison.toJson(),
        'user': user.toJson(),
        'dealer': dealer.toJson(),
        'make': make.toJson(),
        'model': model.toJson(),
        'views_count': viewsCount.toJson(),
        'created_at': createdAt.toJson(),
        'updated_at': updatedAt.toJson(),
        'moderation_status': moderationStatus.toJson(),
        'year': year.toJson(),
        'absolute_car_name': absoluteCarName.toJson(),
        'licence_type': licenceType.toJson(),
        'ownership': ownership.toJson(),
        'purchase_date': purchaseDate.toJson(),
        'description': description.toJson(),
        'description_en': descriptionEn.toJson(),
        'description_uz': descriptionUz.toJson(),
        'description_ru': descriptionRu.toJson(),
        'is_registered_locally': isRegisteredLocally.toJson(),
        'contact_name': contactName.toJson(),
        'contact_email': contactEmail.toJson(),
        'contact_phone': contactPhone.toJson(),
        'contact_available_from': contactAvailableFrom.toJson(),
        'contact_available_to': contactAvailableTo.toJson(),
        'location_url': locationUrl.toJson(),
        'longitude': longitude.toJson(),
        'latitude': latitude.toJson(),
        'distance_traveled': distanceTraveled.toJson(),
        'mileage_image': mileageImage.toJson(),
        'registration_vin': registrationVin.toJson(),
        'registration_plate': registrationPlate.toJson(),
        'registration_certificate': registrationCertificate.toJson(),
        'registration_serial_number': registrationSerialNumber.toJson(),
        'registered_in_uzbekistan': registeredInUzbekistan.toJson(),
        'user_type': userType.toJson(),
        'is_new': isNew.toJson(),
        'price': price.toJson(),
        'discount': discount.toJson(),
        'currency': currency.toJson(),
        'published_at': publishedAt.toJson(),
        'contact_views_count': contactViewsCount.toJson(),
        'expired_at': expiredAt.toJson(),
        'top_expires_at': topExpiresAt.toJson(),
        'is_rent_with_purchase': isRentWithPurchase.toJson(),
        'is_face_to_face_check': isFaceToFaceCheck.toJson(),
        'generation': generation.toJson(),
        'body_type': bodyType.toJson(),
        'drive_type': driveType.toJson(),
        'engine_type': engineType.toJson(),
        'gearbox_type': gearboxType.toJson(),
        'modification_type': modificationType.toJson(),
        'equipment': equipment.toJson(),
        'gas_equipment': gasEquipment.toJson(),
        'color': color.toJson(),
        'district': district.toJson(),
        'is_wishlisted': isWishlisted.toJson(),
      };
}
