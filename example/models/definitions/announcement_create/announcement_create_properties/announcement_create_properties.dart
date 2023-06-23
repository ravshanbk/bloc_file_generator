import '../../../paths/car_announcement_counter/car_annoucement_counter_get/car_place_category_list_parametr/fluffy_responses/fluffy_200/rent_with_purchase_class/rent_with_purchase.dart';
import '../../../paths/car_place_category_list/car_place_category_list_get/purple_responses/purple_200/schema/schema_properties/equipment_class/equipment_class.dart';
import '../../../swagger_model.dart';
import '../../annoncement_compare/annoncement_compare_properties/price/price.dart';
import '../../annoncement_compare/annoncement_compare_properties/year/year.dart';
import '../../car_place_category/car_place_category_properties/contact_name_class/contact_name_class.dart';
import '../../car_place_category/car_place_category_properties/is_camparison_class/is_camparison_class.dart';
import '../../product/product_properties/body_type/body_type.dart';
import '../../working_days/car_place_working_days_properties/currency/currency.dart';

class AnnouncementCreateProperties {
  final IsComparisonClass id;
  final BodyType make;
  final BodyType model;
  final EquipmentClass generation;
  final EquipmentClass bodyType;
  final EquipmentClass driveType;
  final EquipmentClass engineType;
  final EquipmentClass gearboxType;
  final Year year;
  final EquipmentClass modificationType;
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
  final BodyType region;
  final BodyType district;
  final EquipmentClass locationUrl;
  final EquipmentClass longitude;
  final EquipmentClass latitude;
  final Price price;
  final Currency currency;
  final Year distanceTraveled;
  final IsComparisonClass mileageImage;
  final ContactNameClass registrationVin;
  final ContactNameClass registrationPlate;
  final ContactNameClass registrationCertificate;
  final ContactNameClass registrationSerialNumber;
  final BodyType registeredInUzbekistan;
  final BodyType isNew;
  final PurpleGallery gallery;
  final PurpleGallery gallery360;
  final RentWithPurchaseClass damagedParts;
  final BodyType isRentWithPurchase;
  final RentWithPurchase rentWithPurchase;
  final EquipmentClass equipment;
  final OptionItemsClass options;
  final OptionItemsClass optionItems;
  final EquipmentClass gasEquipment;

  AnnouncementCreateProperties({
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
    required this.longitude,
    required this.latitude,
    required this.price,
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
    required this.damagedParts,
    required this.isRentWithPurchase,
    required this.rentWithPurchase,
    required this.equipment,
    required this.options,
    required this.optionItems,
    required this.gasEquipment,
  });

  factory AnnouncementCreateProperties.fromJson(Map<String, dynamic> json) => AnnouncementCreateProperties(
        id: IsComparisonClass.fromJson(json['id']),
        make: BodyType.fromJson(json['make']),
        model: BodyType.fromJson(json['model']),
        generation: EquipmentClass.fromJson(json['generation']),
        bodyType: EquipmentClass.fromJson(json['body_type']),
        driveType: EquipmentClass.fromJson(json['drive_type']),
        engineType: EquipmentClass.fromJson(json['engine_type']),
        gearboxType: EquipmentClass.fromJson(json['gearbox_type']),
        year: Year.fromJson(json['year']),
        modificationType: EquipmentClass.fromJson(json['modification_type']),
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
        region: BodyType.fromJson(json['region']),
        district: BodyType.fromJson(json['district']),
        locationUrl: EquipmentClass.fromJson(json['location_url']),
        longitude: EquipmentClass.fromJson(json['longitude']),
        latitude: EquipmentClass.fromJson(json['latitude']),
        price: Price.fromJson(json['price']),
        currency: Currency.fromJson(json['currency']),
        distanceTraveled: Year.fromJson(json['distance_traveled']),
        mileageImage: IsComparisonClass.fromJson(json['mileage_image']),
        registrationVin: ContactNameClass.fromJson(json['registration_vin']),
        registrationPlate: ContactNameClass.fromJson(json['registration_plate']),
        registrationCertificate: ContactNameClass.fromJson(json['registration_certificate']),
        registrationSerialNumber: ContactNameClass.fromJson(json['registration_serial_number']),
        registeredInUzbekistan: BodyType.fromJson(json['registered_in_uzbekistan']),
        isNew: BodyType.fromJson(json['is_new']),
        gallery: PurpleGallery.fromJson(json['gallery']),
        gallery360: PurpleGallery.fromJson(json['gallery_360']),
        damagedParts: RentWithPurchaseClass.fromJson(json['damaged_parts']),
        isRentWithPurchase: BodyType.fromJson(json['is_rent_with_purchase']),
        rentWithPurchase: RentWithPurchase.fromJson(json['rent_with_purchase']),
        equipment: EquipmentClass.fromJson(json['equipment']),
        options: OptionItemsClass.fromJson(json['options']),
        optionItems: OptionItemsClass.fromJson(json['option_items']),
        gasEquipment: EquipmentClass.fromJson(json['gas_equipment']),
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
        'longitude': longitude.toJson(),
        'latitude': latitude.toJson(),
        'price': price.toJson(),
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
        'damaged_parts': damagedParts.toJson(),
        'is_rent_with_purchase': isRentWithPurchase.toJson(),
        'rent_with_purchase': rentWithPurchase.toJson(),
        'equipment': equipment.toJson(),
        'options': options.toJson(),
        'option_items': optionItems.toJson(),
        'gas_equipment': gasEquipment.toJson(),
      };
}
