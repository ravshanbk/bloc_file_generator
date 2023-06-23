import '../../../paths/car_announcement_counter/car_annoucement_counter_get/car_place_category_list_parametr/fluffy_responses/fluffy_200/rent_with_purchase_class/rent_with_purchase.dart';
import '../../../paths/car_place_category_list/car_place_category_list_get/purple_responses/purple_200/schema/schema_properties/equipment_class/equipment_class.dart';
import '../../../paths/car_place_slug/path_class/patch_responses/the_201_class/dealer/dealer.dart';
import '../../annoncement_compare/annoncement_compare_properties/price/price.dart';
import '../../annoncement_compare/annoncement_compare_properties/year/year.dart';
import '../../car_place_category/car_place_category_properties/contact_name_class/contact_name_class.dart';
import '../../car_place_category/car_place_category_properties/is_camparison_class/is_camparison_class.dart';
import '../../product/product_properties/body_type/body_type.dart';
import '../../working_days/car_place_working_days_properties/currency/currency.dart';

class AnnouncementDetailProperties {
  final IsComparisonClass id;
  final Dealer make;
  final Dealer model;
  final ContactNameClass absoluteCarName;
  final Price price;
  final Currency currency;
  final IsComparisonClass publishedAt;
  final Year year;
  final Year distanceTraveled;
  final Dealer color;
  final Dealer generation;
  final Dealer bodyType;
  final Dealer driveType;
  final Dealer engineType;
  final Dealer gearboxType;
  final Dealer modificationType;
  final Currency licenceType;
  final Currency ownership;
  final Price purchaseDate;
  final EquipmentClass description;
  final BodyType isRegisteredLocally;
  final ContactNameClass registrationVin;
  final ContactNameClass registrationPlate;
  final ContactNameClass registrationCertificate;
  final ContactNameClass registrationSerialNumber;
  final BodyType registeredInUzbekistan;
  final IsComparisonClass user;
  final ContactNameClass contactName;
  final EquipmentClass contactEmail;
  final ContactNameClass contactPhone;
  final EquipmentClass contactAvailableFrom;
  final EquipmentClass contactAvailableTo;
  final BodyType isNew;
  final RentWithPurchaseClass gallery;
  final RentWithPurchaseClass gallery360;
  final EquipmentClass longitude;
  final EquipmentClass latitude;
  final IsComparisonClass isMine;
  final Year viewsCount;
  final IsComparisonClass stats;
  final IsComparisonClass createdAt;
  final IsComparisonClass updatedAt;
  final RentWithPurchaseClass damagedParts;
  final Currency userType;
  final IsComparisonClass wishlistCount;
  final IsComparisonClass callCount;
  final IsComparisonClass isComparison;
  final BodyType isRentWithPurchase;
  final EquipmentClass expiredAt;
  final IsComparisonClass isExpired;
  final IsComparisonClass priceAnalytics;
  final IsComparisonClass todayViewedCount;
  final Dealer region;
  final Dealer district;
  final Dealer gasEquipment;
  final Dealer equipment;
  final RentWithPurchaseClass options;
  final RentWithPurchaseClass rentWithPurchase;
  final IsComparisonClass announcementVerifyOwners;
  final BodyType isFaceToFaceCheck;
  final IsComparisonClass mileageImage;
  final IsComparisonClass isWishlisted;

  AnnouncementDetailProperties({
    required this.id,
    required this.make,
    required this.model,
    required this.absoluteCarName,
    required this.price,
    required this.currency,
    required this.publishedAt,
    required this.year,
    required this.distanceTraveled,
    required this.color,
    required this.generation,
    required this.bodyType,
    required this.driveType,
    required this.engineType,
    required this.gearboxType,
    required this.modificationType,
    required this.licenceType,
    required this.ownership,
    required this.purchaseDate,
    required this.description,
    required this.isRegisteredLocally,
    required this.registrationVin,
    required this.registrationPlate,
    required this.registrationCertificate,
    required this.registrationSerialNumber,
    required this.registeredInUzbekistan,
    required this.user,
    required this.contactName,
    required this.contactEmail,
    required this.contactPhone,
    required this.contactAvailableFrom,
    required this.contactAvailableTo,
    required this.isNew,
    required this.gallery,
    required this.gallery360,
    required this.longitude,
    required this.latitude,
    required this.isMine,
    required this.viewsCount,
    required this.stats,
    required this.createdAt,
    required this.updatedAt,
    required this.damagedParts,
    required this.userType,
    required this.wishlistCount,
    required this.callCount,
    required this.isComparison,
    required this.isRentWithPurchase,
    required this.expiredAt,
    required this.isExpired,
    required this.priceAnalytics,
    required this.todayViewedCount,
    required this.region,
    required this.district,
    required this.gasEquipment,
    required this.equipment,
    required this.options,
    required this.rentWithPurchase,
    required this.announcementVerifyOwners,
    required this.isFaceToFaceCheck,
    required this.mileageImage,
    required this.isWishlisted,
  });

  factory AnnouncementDetailProperties.fromJson(Map<String, dynamic> json) => AnnouncementDetailProperties(
        id: IsComparisonClass.fromJson(json['id']),
        make: Dealer.fromJson(json['make']),
        model: Dealer.fromJson(json['model']),
        absoluteCarName: ContactNameClass.fromJson(json['absolute_car_name']),
        price: Price.fromJson(json['price']),
        currency: Currency.fromJson(json['currency']),
        publishedAt: IsComparisonClass.fromJson(json['published_at']),
        year: Year.fromJson(json['year']),
        distanceTraveled: Year.fromJson(json['distance_traveled']),
        color: Dealer.fromJson(json['color']),
        generation: Dealer.fromJson(json['generation']),
        bodyType: Dealer.fromJson(json['body_type']),
        driveType: Dealer.fromJson(json['drive_type']),
        engineType: Dealer.fromJson(json['engine_type']),
        gearboxType: Dealer.fromJson(json['gearbox_type']),
        modificationType: Dealer.fromJson(json['modification_type']),
        licenceType: Currency.fromJson(json['licence_type']),
        ownership: Currency.fromJson(json['ownership']),
        purchaseDate: Price.fromJson(json['purchase_date']),
        description: EquipmentClass.fromJson(json['description']),
        isRegisteredLocally: BodyType.fromJson(json['is_registered_locally']),
        registrationVin: ContactNameClass.fromJson(json['registration_vin']),
        registrationPlate: ContactNameClass.fromJson(json['registration_plate']),
        registrationCertificate: ContactNameClass.fromJson(json['registration_certificate']),
        registrationSerialNumber: ContactNameClass.fromJson(json['registration_serial_number']),
        registeredInUzbekistan: BodyType.fromJson(json['registered_in_uzbekistan']),
        user: IsComparisonClass.fromJson(json['user']),
        contactName: ContactNameClass.fromJson(json['contact_name']),
        contactEmail: EquipmentClass.fromJson(json['contact_email']),
        contactPhone: ContactNameClass.fromJson(json['contact_phone']),
        contactAvailableFrom: EquipmentClass.fromJson(json['contact_available_from']),
        contactAvailableTo: EquipmentClass.fromJson(json['contact_available_to']),
        isNew: BodyType.fromJson(json['is_new']),
        gallery: RentWithPurchaseClass.fromJson(json['gallery']),
        gallery360: RentWithPurchaseClass.fromJson(json['gallery_360']),
        longitude: EquipmentClass.fromJson(json['longitude']),
        latitude: EquipmentClass.fromJson(json['latitude']),
        isMine: IsComparisonClass.fromJson(json['is_mine']),
        viewsCount: Year.fromJson(json['views_count']),
        stats: IsComparisonClass.fromJson(json['_stats']),
        createdAt: IsComparisonClass.fromJson(json['created_at']),
        updatedAt: IsComparisonClass.fromJson(json['updated_at']),
        damagedParts: RentWithPurchaseClass.fromJson(json['damaged_parts']),
        userType: Currency.fromJson(json['user_type']),
        wishlistCount: IsComparisonClass.fromJson(json['wishlist_count']),
        callCount: IsComparisonClass.fromJson(json['call_count']),
        isComparison: IsComparisonClass.fromJson(json['is_comparison']),
        isRentWithPurchase: BodyType.fromJson(json['is_rent_with_purchase']),
        expiredAt: EquipmentClass.fromJson(json['expired_at']),
        isExpired: IsComparisonClass.fromJson(json['is_expired']),
        priceAnalytics: IsComparisonClass.fromJson(json['price_analytics']),
        todayViewedCount: IsComparisonClass.fromJson(json['today_viewed_count']),
        region: Dealer.fromJson(json['region']),
        district: Dealer.fromJson(json['district']),
        gasEquipment: Dealer.fromJson(json['gas_equipment']),
        equipment: Dealer.fromJson(json['equipment']),
        options: RentWithPurchaseClass.fromJson(json['options']),
        rentWithPurchase: RentWithPurchaseClass.fromJson(json['rent_with_purchase']),
        announcementVerifyOwners: IsComparisonClass.fromJson(json['announcement_verify_owners']),
        isFaceToFaceCheck: BodyType.fromJson(json['is_face_to_face_check']),
        mileageImage: IsComparisonClass.fromJson(json['mileage_image']),
        isWishlisted: IsComparisonClass.fromJson(json['is_wishlisted']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'make': make.toJson(),
        'model': model.toJson(),
        'absolute_car_name': absoluteCarName.toJson(),
        'price': price.toJson(),
        'currency': currency.toJson(),
        'published_at': publishedAt.toJson(),
        'year': year.toJson(),
        'distance_traveled': distanceTraveled.toJson(),
        'color': color.toJson(),
        'generation': generation.toJson(),
        'body_type': bodyType.toJson(),
        'drive_type': driveType.toJson(),
        'engine_type': engineType.toJson(),
        'gearbox_type': gearboxType.toJson(),
        'modification_type': modificationType.toJson(),
        'licence_type': licenceType.toJson(),
        'ownership': ownership.toJson(),
        'purchase_date': purchaseDate.toJson(),
        'description': description.toJson(),
        'is_registered_locally': isRegisteredLocally.toJson(),
        'registration_vin': registrationVin.toJson(),
        'registration_plate': registrationPlate.toJson(),
        'registration_certificate': registrationCertificate.toJson(),
        'registration_serial_number': registrationSerialNumber.toJson(),
        'registered_in_uzbekistan': registeredInUzbekistan.toJson(),
        'user': user.toJson(),
        'contact_name': contactName.toJson(),
        'contact_email': contactEmail.toJson(),
        'contact_phone': contactPhone.toJson(),
        'contact_available_from': contactAvailableFrom.toJson(),
        'contact_available_to': contactAvailableTo.toJson(),
        'is_new': isNew.toJson(),
        'gallery': gallery.toJson(),
        'gallery_360': gallery360.toJson(),
        'longitude': longitude.toJson(),
        'latitude': latitude.toJson(),
        'is_mine': isMine.toJson(),
        'views_count': viewsCount.toJson(),
        '_stats': stats.toJson(),
        'created_at': createdAt.toJson(),
        'updated_at': updatedAt.toJson(),
        'damaged_parts': damagedParts.toJson(),
        'user_type': userType.toJson(),
        'wishlist_count': wishlistCount.toJson(),
        'call_count': callCount.toJson(),
        'is_comparison': isComparison.toJson(),
        'is_rent_with_purchase': isRentWithPurchase.toJson(),
        'expired_at': expiredAt.toJson(),
        'is_expired': isExpired.toJson(),
        'price_analytics': priceAnalytics.toJson(),
        'today_viewed_count': todayViewedCount.toJson(),
        'region': region.toJson(),
        'district': district.toJson(),
        'gas_equipment': gasEquipment.toJson(),
        'equipment': equipment.toJson(),
        'options': options.toJson(),
        'rent_with_purchase': rentWithPurchase.toJson(),
        'announcement_verify_owners': announcementVerifyOwners.toJson(),
        'is_face_to_face_check': isFaceToFaceCheck.toJson(),
        'mileage_image': mileageImage.toJson(),
        'is_wishlisted': isWishlisted.toJson(),
      };
}
