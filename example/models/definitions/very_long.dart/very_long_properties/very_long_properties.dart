import '../../car_place_category/car_place_category_properties/contact_name_class/contact_name_class.dart';
import '../../car_place_category/car_place_category_properties/is_camparison_class/is_camparison_class.dart';
import '../../product/product_properties/body_type/body_type.dart';

class HomeAvtouzWebAutoBackendSrcEsAnnouncementsSerializersPyAnnouncementSerializerProperties {
  final BodyType id;
  final BodyType make;
  final BodyType model;
  final BodyType generation;
  final BodyType bodyType;
  final BodyType driveType;
  final BodyType engineType;
  final BodyType gearboxType;
  final BodyType year;
  final BodyType modificationType;
  final BodyType region;
  final BodyType district;
  final BodyType user;
  final BodyType dealer;
  final ContactNameClass licenceType;
  final ContactNameClass ownership;
  final ContactNameClass description;
  final BodyType isRegisteredLocally;
  final ContactNameClass contactName;
  final ContactNameClass contactEmail;
  final ContactNameClass contactPhone;
  final BodyType longitude;
  final BodyType latitude;
  final BodyType distanceTraveled;
  final BodyType registeredInUzbekistan;
  final ContactNameClass userType;
  final BodyType isNew;
  final BodyType price;
  final ContactNameClass currency;
  final IsComparisonClass gallery;
  final IsComparisonClass gallery360;
  final ContactNameClass publishedAt;
  final BodyType viewsCount;
  final IsComparisonClass isComparison;
  final BodyType discount;
  final ContactNameClass contactAvailableFrom;
  final ContactNameClass contactAvailableTo;
  final BodyType isRentWithPurchase;
  final IsComparisonClass isWishlisted;

  HomeAvtouzWebAutoBackendSrcEsAnnouncementsSerializersPyAnnouncementSerializerProperties({
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
    required this.gallery360,
    required this.publishedAt,
    required this.viewsCount,
    required this.isComparison,
    required this.discount,
    required this.contactAvailableFrom,
    required this.contactAvailableTo,
    required this.isRentWithPurchase,
    required this.isWishlisted,
  });

  factory HomeAvtouzWebAutoBackendSrcEsAnnouncementsSerializersPyAnnouncementSerializerProperties.fromJson(
          Map<String, dynamic> json) =>
      HomeAvtouzWebAutoBackendSrcEsAnnouncementsSerializersPyAnnouncementSerializerProperties(
        id: BodyType.fromJson(json['id']),
        make: BodyType.fromJson(json['make']),
        model: BodyType.fromJson(json['model']),
        generation: BodyType.fromJson(json['generation']),
        bodyType: BodyType.fromJson(json['body_type']),
        driveType: BodyType.fromJson(json['drive_type']),
        engineType: BodyType.fromJson(json['engine_type']),
        gearboxType: BodyType.fromJson(json['gearbox_type']),
        year: BodyType.fromJson(json['year']),
        modificationType: BodyType.fromJson(json['modification_type']),
        region: BodyType.fromJson(json['region']),
        district: BodyType.fromJson(json['district']),
        user: BodyType.fromJson(json['user']),
        dealer: BodyType.fromJson(json['dealer']),
        licenceType: ContactNameClass.fromJson(json['licence_type']),
        ownership: ContactNameClass.fromJson(json['ownership']),
        description: ContactNameClass.fromJson(json['description']),
        isRegisteredLocally: BodyType.fromJson(json['is_registered_locally']),
        contactName: ContactNameClass.fromJson(json['contact_name']),
        contactEmail: ContactNameClass.fromJson(json['contact_email']),
        contactPhone: ContactNameClass.fromJson(json['contact_phone']),
        longitude: BodyType.fromJson(json['longitude']),
        latitude: BodyType.fromJson(json['latitude']),
        distanceTraveled: BodyType.fromJson(json['distance_traveled']),
        registeredInUzbekistan: BodyType.fromJson(json['registered_in_uzbekistan']),
        userType: ContactNameClass.fromJson(json['user_type']),
        isNew: BodyType.fromJson(json['is_new']),
        price: BodyType.fromJson(json['price']),
        currency: ContactNameClass.fromJson(json['currency']),
        gallery: IsComparisonClass.fromJson(json['gallery']),
        gallery360: IsComparisonClass.fromJson(json['gallery_360']),
        publishedAt: ContactNameClass.fromJson(json['published_at']),
        viewsCount: BodyType.fromJson(json['views_count']),
        isComparison: IsComparisonClass.fromJson(json['is_comparison']),
        discount: BodyType.fromJson(json['discount']),
        contactAvailableFrom: ContactNameClass.fromJson(json['contact_available_from']),
        contactAvailableTo: ContactNameClass.fromJson(json['contact_available_to']),
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
        'gallery_360': gallery360.toJson(),
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
