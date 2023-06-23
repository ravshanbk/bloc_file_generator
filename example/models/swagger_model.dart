import 'dart:convert';

import 'definitions/annoncement_compare/annoncement_compare_properties/price/price.dart';
import 'definitions/annoncement_compare/annoncement_compare_properties/year/year.dart';
import 'definitions/car_place_category/car_place_category_properties/contact_name_class/contact_name_class.dart';
import 'definitions/car_place_category/car_place_category_properties/is_camparison_class/is_camparison_class.dart';
import 'definitions/car_review_create_update/car_review_create_update_properties/tives/tives.dart';
import 'definitions/definitions.dart';
import 'definitions/make/make_properties/slug/slug.dart';
import 'definitions/product/product_properties/body_type/body_type.dart';
import 'definitions/rent_order/rent_order_properties/additional_services/additional_services.dart';
import 'definitions/working_days/car_place_working_days_properties/currency/currency.dart';
import 'info/info.dart';
import 'paths/car_announcement_counter/car_annoucement_counter_get/car_place_category_list_parametr/fluffy_responses/fluffy_200/rent_with_purchase_class/rent_with_purchase.dart';
import 'paths/car_place_category_list/car_place_category_list_get/purple_responses/purple_200/schema/schema_properties/equipment_class/equipment_class.dart';
import 'paths/car_place_slug/path_class/patch_responses/the_201_class/dealer/dealer.dart';
import 'paths/paths.dart';
import 'security/security.dart';
import 'security_definations/basic/basic.dart';
import 'security_definations/security_definations.dart';

SwaggerModel swaggerModelFromJson(String str) => SwaggerModel.fromJson(json.decode(str));

String swaggerModelToJson(SwaggerModel data) => json.encode(data.toJson());

class SwaggerModel {
  final String swagger;
  final Info info;
  final String host;
  final List<String> schemes;
  final String basePath;
  final List<String> consumes;
  final List<String> produces;
  final SecurityDefinitions securityDefinitions;
  final List<Security> security;
  final Paths paths;
  final Definitions definitions;

  SwaggerModel({
    required this.swagger,
    required this.info,
    required this.host,
    required this.schemes,
    required this.basePath,
    required this.consumes,
    required this.produces,
    required this.securityDefinitions,
    required this.security,
    required this.paths,
    required this.definitions,
  });

  factory SwaggerModel.fromJson(Map<String, dynamic> json) => SwaggerModel(
        swagger: json['swagger'],
        info: Info.fromJson(json['info']),
        host: json['host'],
        schemes: List<String>.from(json['schemes'].map((x) => x)),
        basePath: json['basePath'],
        consumes: List<String>.from(json['consumes'].map((x) => x)),
        produces: List<String>.from(json['produces'].map((x) => x)),
        securityDefinitions: SecurityDefinitions.fromJson(json['securityDefinitions']),
        security: List<Security>.from(json['security'].map((x) => Security.fromJson(x))),
        paths: Paths.fromJson(json['paths']),
        definitions: Definitions.fromJson(json['definitions']),
      );

  Map<String, dynamic> toJson() => {
        'swagger': swagger,
        'info': info.toJson(),
        'host': host,
        'schemes': List<dynamic>.from(schemes.map((x) => x)),
        'basePath': basePath,
        'consumes': List<dynamic>.from(consumes.map((x) => x)),
        'produces': List<dynamic>.from(produces.map((x) => x)),
        'securityDefinitions': securityDefinitions.toJson(),
        'security': List<dynamic>.from(security.map((x) => x.toJson())),
        'paths': paths.toJson(),
        'definitions': definitions.toJson(),
      };
}

class Options {
  final String type;
  final Basic items;
  final bool uniqueItems;

  Options({
    required this.type,
    required this.items,
    required this.uniqueItems,
  });

  factory Options.fromJson(Map<String, dynamic> json) => Options(
        type: json['type'],
        items: Basic.fromJson(json['items']),
        uniqueItems: json['uniqueItems'],
      );

  Map<String, dynamic> toJson() => {
        'type': type,
        'items': items.toJson(),
        'uniqueItems': uniqueItems,
      };
}

class PurpleGallery {
  final String type;
  final IsComparisonClass items;

  PurpleGallery({
    required this.type,
    required this.items,
  });

  factory PurpleGallery.fromJson(Map<String, dynamic> json) => PurpleGallery(
        type: json['type'],
        items: IsComparisonClass.fromJson(json['items']),
      );

  Map<String, dynamic> toJson() => {
        'type': type,
        'items': items.toJson(),
      };
}

class OptionItemsClass {
  final String type;
  final Basic items;
  final List<dynamic> optionDefault;

  OptionItemsClass({
    required this.type,
    required this.items,
    required this.optionDefault,
  });

  factory OptionItemsClass.fromJson(Map<String, dynamic> json) => OptionItemsClass(
        type: json['type'],
        items: Basic.fromJson(json['items']),
        optionDefault: List<dynamic>.from(json['default'].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        'type': type,
        'items': items.toJson(),
        'default': List<dynamic>.from(optionDefault.map((x) => x)),
      };
}

class RentWithPurchase {
  final String type;
  final Dealer items;
  final List<dynamic> rentWithPurchaseDefault;

  RentWithPurchase({
    required this.type,
    required this.items,
    required this.rentWithPurchaseDefault,
  });

  factory RentWithPurchase.fromJson(Map<String, dynamic> json) => RentWithPurchase(
        type: json['type'],
        items: Dealer.fromJson(json['items']),
        rentWithPurchaseDefault: List<dynamic>.from(json['default'].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        'type': type,
        'items': items.toJson(),
        'default': List<dynamic>.from(rentWithPurchaseDefault.map((x) => x)),
      };
}

class Type {
  final List<String> required;
  final String type;
  final BodyTypeProperties properties;

  Type({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory Type.fromJson(Map<String, dynamic> json) => Type(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: BodyTypeProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}

class BodyTypeProperties {
  final IsComparisonClass id;
  final Currency type;
  final IsComparisonClass logo;
  final ContactNameClass typeDisplay;

  BodyTypeProperties({
    required this.id,
    required this.type,
    required this.logo,
    required this.typeDisplay,
  });

  factory BodyTypeProperties.fromJson(Map<String, dynamic> json) => BodyTypeProperties(
        id: IsComparisonClass.fromJson(json['id']),
        type: Currency.fromJson(json['type']),
        logo: IsComparisonClass.fromJson(json['logo']),
        typeDisplay: ContactNameClass.fromJson(json['type_display']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'type': type.toJson(),
        'logo': logo.toJson(),
        'type_display': typeDisplay.toJson(),
      };
}

class EquipmentProperties {
  final IsComparisonClass id;
  final ContactNameClass name;
  final EquipmentClass? model;
  final RentWithPurchaseClass options;

  EquipmentProperties({
    required this.id,
    required this.name,
    this.model,
    required this.options,
  });

  factory EquipmentProperties.fromJson(Map<String, dynamic> json) => EquipmentProperties(
        id: IsComparisonClass.fromJson(json['id']),
        name: ContactNameClass.fromJson(json['name']),
        model: json['model'] == null ? null : EquipmentClass.fromJson(json['model']),
        options: RentWithPurchaseClass.fromJson(json['options']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'name': name.toJson(),
        'model': model?.toJson(),
        'options': options.toJson(),
      };
}

class Notification {
  final List<String> required;
  final String type;
  final NotificationProperties properties;

  Notification({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory Notification.fromJson(Map<String, dynamic> json) => Notification(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: NotificationProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}

class NotificationProperties {
  final IsComparisonClass id;
  final Dealer category;
  final ContactNameClass title;
  final IsComparisonClass cover;
  final ContactNameClass content;
  final IsComparisonClass createdAt;
  final Year readCount;
  final BodyType toAll;

  NotificationProperties({
    required this.id,
    required this.category,
    required this.title,
    required this.cover,
    required this.content,
    required this.createdAt,
    required this.readCount,
    required this.toAll,
  });

  factory NotificationProperties.fromJson(Map<String, dynamic> json) => NotificationProperties(
        id: IsComparisonClass.fromJson(json['id']),
        category: Dealer.fromJson(json['category']),
        title: ContactNameClass.fromJson(json['title']),
        cover: IsComparisonClass.fromJson(json['cover']),
        content: ContactNameClass.fromJson(json['content']),
        createdAt: IsComparisonClass.fromJson(json['created_at']),
        readCount: Year.fromJson(json['read_count']),
        toAll: BodyType.fromJson(json['to_all']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'category': category.toJson(),
        'title': title.toJson(),
        'cover': cover.toJson(),
        'content': content.toJson(),
        'created_at': createdAt.toJson(),
        'read_count': readCount.toJson(),
        'to_all': toAll.toJson(),
      };
}

class PopularSearch {
  final List<String> required;
  final String type;
  final PopularSearchProperties properties;

  PopularSearch({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory PopularSearch.fromJson(Map<String, dynamic> json) => PopularSearch(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: PopularSearchProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}

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

class RegisterUser {
  final List<String> required;
  final String type;
  final RegisterUserProperties properties;

  RegisterUser({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory RegisterUser.fromJson(Map<String, dynamic> json) => RegisterUser(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: RegisterUserProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}

class RegisterUserProperties {
  final IsComparisonClass image;
  final ContactNameClass fullName;
  final EquipmentClass region;
  final ContactNameClass phoneNumber;
  final EquipmentClass email;
  final ContactNameClass password;
  final IsComparisonClass token;

  RegisterUserProperties({
    required this.image,
    required this.fullName,
    required this.region,
    required this.phoneNumber,
    required this.email,
    required this.password,
    required this.token,
  });

  factory RegisterUserProperties.fromJson(Map<String, dynamic> json) => RegisterUserProperties(
        image: IsComparisonClass.fromJson(json['image']),
        fullName: ContactNameClass.fromJson(json['full_name']),
        region: EquipmentClass.fromJson(json['region']),
        phoneNumber: ContactNameClass.fromJson(json['phone_number']),
        email: EquipmentClass.fromJson(json['email']),
        password: ContactNameClass.fromJson(json['password']),
        token: IsComparisonClass.fromJson(json['token']),
      );

  Map<String, dynamic> toJson() => {
        'image': image.toJson(),
        'full_name': fullName.toJson(),
        'region': region.toJson(),
        'phone_number': phoneNumber.toJson(),
        'email': email.toJson(),
        'password': password.toJson(),
        'token': token.toJson(),
      };
}

class SocialAuthLogin {
  final String type;
  final SocialAuthLoginProperties properties;

  SocialAuthLogin({
    required this.type,
    required this.properties,
  });

  factory SocialAuthLogin.fromJson(Map<String, dynamic> json) => SocialAuthLogin(
        type: json['type'],
        properties: SocialAuthLoginProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'type': type,
        'properties': properties.toJson(),
      };
}

class SocialAuthLoginProperties {
  final BodyType accessToken;
  final BodyType code;

  SocialAuthLoginProperties({
    required this.accessToken,
    required this.code,
  });

  factory SocialAuthLoginProperties.fromJson(Map<String, dynamic> json) => SocialAuthLoginProperties(
        accessToken: BodyType.fromJson(json['access_token']),
        code: BodyType.fromJson(json['code']),
      );

  Map<String, dynamic> toJson() => {
        'access_token': accessToken.toJson(),
        'code': code.toJson(),
      };
}

class TokenRefresh {
  final List<String> required;
  final String type;
  final TokenRefreshProperties properties;

  TokenRefresh({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory TokenRefresh.fromJson(Map<String, dynamic> json) => TokenRefresh(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: TokenRefreshProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}

class TokenRefreshProperties {
  final ContactNameClass refresh;
  final IsComparisonClass access;

  TokenRefreshProperties({
    required this.refresh,
    required this.access,
  });

  factory TokenRefreshProperties.fromJson(Map<String, dynamic> json) => TokenRefreshProperties(
        refresh: ContactNameClass.fromJson(json['refresh']),
        access: IsComparisonClass.fromJson(json['access']),
      );

  Map<String, dynamic> toJson() => {
        'refresh': refresh.toJson(),
        'access': access.toJson(),
      };
}

class UserNotification {
  final List<String> required;
  final String type;
  final UserNotificationProperties properties;

  UserNotification({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory UserNotification.fromJson(Map<String, dynamic> json) => UserNotification(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: UserNotificationProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}

class UserNotificationProperties {
  final IsComparisonClass id;
  final Dealer notification;
  final EquipmentClass user;
  final BodyType isRead;

  UserNotificationProperties({
    required this.id,
    required this.notification,
    required this.user,
    required this.isRead,
  });

  factory UserNotificationProperties.fromJson(Map<String, dynamic> json) => UserNotificationProperties(
        id: IsComparisonClass.fromJson(json['id']),
        notification: Dealer.fromJson(json['notification']),
        user: EquipmentClass.fromJson(json['user']),
        isRead: BodyType.fromJson(json['is_read']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'notification': notification.toJson(),
        'user': user.toJson(),
        'is_read': isRead.toJson(),
      };
}

class UserProfileWishlist {
  final List<String> required;
  final String type;
  final UserProfileWishlistProperties properties;

  UserProfileWishlist({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory UserProfileWishlist.fromJson(Map<String, dynamic> json) => UserProfileWishlist(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: UserProfileWishlistProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}

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

class UserSearch {
  final List<String> required;
  final String type;
  final UserSearchProperties properties;

  UserSearch({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory UserSearch.fromJson(Map<String, dynamic> json) => UserSearch(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: UserSearchProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}

class UserSearchProperties {
  final IsComparisonClass id;
  final ContactNameClass searchText;

  UserSearchProperties({
    required this.id,
    required this.searchText,
  });

  factory UserSearchProperties.fromJson(Map<String, dynamic> json) => UserSearchProperties(
        id: IsComparisonClass.fromJson(json['id']),
        searchText: ContactNameClass.fromJson(json['search_text']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'search_text': searchText.toJson(),
      };
}

class UserShortInfo {
  final String type;
  final UserShortInfoProperties properties;

  UserShortInfo({
    required this.type,
    required this.properties,
  });

  factory UserShortInfo.fromJson(Map<String, dynamic> json) => UserShortInfo(
        type: json['type'],
        properties: UserShortInfoProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'type': type,
        'properties': properties.toJson(),
      };
}

class UserShortInfoProperties {
  final ContactNameClass fullName;
  final IsComparisonClass image;

  UserShortInfoProperties({
    required this.fullName,
    required this.image,
  });

  factory UserShortInfoProperties.fromJson(Map<String, dynamic> json) => UserShortInfoProperties(
        fullName: ContactNameClass.fromJson(json['full_name']),
        image: IsComparisonClass.fromJson(json['image']),
      );

  Map<String, dynamic> toJson() => {
        'full_name': fullName.toJson(),
        'image': image.toJson(),
      };
}

class UserWishlist {
  final List<String> required;
  final String type;
  final UserWishlistProperties properties;

  UserWishlist({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory UserWishlist.fromJson(Map<String, dynamic> json) => UserWishlist(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: UserWishlistProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}

class UserWishlistProperties {
  final BodyType announcement;

  UserWishlistProperties({
    required this.announcement,
  });

  factory UserWishlistProperties.fromJson(Map<String, dynamic> json) => UserWishlistProperties(
        announcement: BodyType.fromJson(json['announcement']),
      );

  Map<String, dynamic> toJson() => {
        'announcement': announcement.toJson(),
      };
}
