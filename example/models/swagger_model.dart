import 'dart:convert';

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

class Definitions {
  final CarPlaceCategory carPlaceCategory;
  final CarPlaceMiniCategory carPlaceMiniCategory;
  final WorkingDays carPlaceWorkingDays;
  final CarPlaceList carPlaceList;
  final CarPlace carPlace;
  final ProductCategory productCategory;
  final Product product;
  final AnnouncementFilterCounter announcementFilterCounter;
  final AnnouncementCall announcementCall;
  final Color color;
  final Image image;
  final AnnouncementCompare announcementCompare;
  final CarDamagedPart carDamagedPart;
  final DefinitionsRentWithPurchase rentWithPurchase;
  final AnnouncementCreate announcementCreate;
  final Generation generation;
  final Region region;
  final CarReviewQuestion district;
  final DealerMini dealerMini;
  final CarPlaceMiniCategory gasEquipment;
  final Announcement announcement;
  final AnnouncementOfDay announcementOfDay;
  final AnnouncementOwnerDetail announcementOwnerDetail;
  final AnnouncementAddingPhotoInstructions announcementAddingPhotoInstructions;
  final SendVerificationCodeFor sendVerificationCodeForAnnouncement;
  final UserChangePhone verifyCodeForAnnouncement;
  final AnnouncementVerifyOwnerCreate announcementVerifyOwnerCreate;
  final Make make;
  final CarPlaceMiniCategory model;
  final Type bodyType;
  final Type driveType;
  final Type engineType;
  final Type gearboxType;
  final ModificationType modificationType;
  final CarPlaceMiniCategory optionCategory;
  final OptionClass option;
  final CarPlaceMiniCategory optionItem;
  final MentOption equipmentOption;
  final Equipment equipment;
  final MentOption announcementOption;
  final AnnouncementDetail announcementDetail;
  final UserComparisonCreateList userComparisonCreateList;
  final OptionClass optionList;
  final Equipment optionListByCategory;
  final AnnouncementMinCarPrice announcementMinCarPrice;
  final MyAnnouncement myAnnouncement;
  final YearClass year;
  final DistrictRegion districtRegion;
  final MapScreenshot mapScreenshot;
  final StaticPage staticPage;
  final CarPlaceMiniCategory usedSocialAuth;
  final ProjectSocialAuths projectSocialAuths;
  final HomeAvtouzWebAutoBackendSrcEsAnnouncementsSerializersPyAnnouncementSerializer
      homeAvtouzWebAutoBackendSrcEsAnnouncementsSerializersPyAnnouncementSerializer;
  final AnnouncementSuggestTypesense announcementSuggestTypesense;
  final CreateAnnouncementOrder createAnnouncementOrder;
  final GetLastTransactionStatus getLastTransactionStatus;
  final Payme payme;
  final Tariff tariff;
  final DealerReels dealerReels;
  final UserReels userReels;
  final AnnouncementReels announcementReels;
  final Reels listReels;
  final EReels likeReels;
  final EReels shareReels;
  final Reels detailReels;
  final AdditionalService additionalService;
  final CarPlaceMiniCategory rentCarType;
  final CarPlaceMiniCategory rentCarCategory;
  final RentCar rentCar;
  final Rent rent;
  final RentCarMainPage rentCarMainPage;
  final RentOrder rentOrderPost;
  final RentOrder rentOrderGet;
  final CarReviewCommentCreateUpdate carReviewCommentCreateUpdate;
  final CarReviewStarAnswerCreate carReviewStarAnswerCreate;
  final CarReviewCreateUpdate carReviewCreateUpdate;
  final CarReviewQuestion carReviewQuestion;
  final CarReviewStarAnswerDetail carReviewStarAnswerDetail;
  final CarReview carReview;
  final CarReviewCommentUser carReviewCommentUser;
  final CarReviewComment carReviewComment;
  final ListStories listStories;
  final Category category;
  final ChangePassword changePassword;
  final UserChangePhone userChangePhone;
  final SendVerificationCodeFor sendVerificationCodeForChangePhone;
  final CarPlaceMiniCategory dealerType;
  final WorkingDays dealerWorkingDays;
  final DealerClass dealer;
  final UserMini userMini;
  final DealerCars dealerCars;
  final DealerMarks dealerMarks;
  final UserCountData userCountData;
  final UserDetailWithCounts userDetailWithCounts;
  final UserDetail userDetail;
  final UserDetailEdit userDetailEdit;
  final UserFilterHistoryCreate userFilterHistoryCreate;
  final UserFilterHistoryDelete userFilterHistoryDelete;
  final UserFilterHistoryList userFilterHistoryList;
  final ChangeForgetPass changeForgetPass;
  final SendVerificationCode sendVerificationCode;
  final Verification verificationForgetPass;
  final ChangeForgetPass tokenObtainPair;
  final CarPlaceMiniCategory notificationCategory;
  final Notification notification;
  final UserNotification userNotification;
  final PopularSearch popularSearch;
  final UserShortInfo userShortInfo;
  final TokenRefresh tokenRefresh;
  final RegisterUser registerUser;
  final Verification verificationRegistrationCode;
  final UserSearch userSearch;
  final SocialAuthLogin socialAuthLogin;
  final UserWishlist userWishlist;
  final UserProfileWishlist userProfileWishlist;

  Definitions({
    required this.carPlaceCategory,
    required this.carPlaceMiniCategory,
    required this.carPlaceWorkingDays,
    required this.carPlaceList,
    required this.carPlace,
    required this.productCategory,
    required this.product,
    required this.announcementFilterCounter,
    required this.announcementCall,
    required this.color,
    required this.image,
    required this.announcementCompare,
    required this.carDamagedPart,
    required this.rentWithPurchase,
    required this.announcementCreate,
    required this.generation,
    required this.region,
    required this.district,
    required this.dealerMini,
    required this.gasEquipment,
    required this.announcement,
    required this.announcementOfDay,
    required this.announcementOwnerDetail,
    required this.announcementAddingPhotoInstructions,
    required this.sendVerificationCodeForAnnouncement,
    required this.verifyCodeForAnnouncement,
    required this.announcementVerifyOwnerCreate,
    required this.make,
    required this.model,
    required this.bodyType,
    required this.driveType,
    required this.engineType,
    required this.gearboxType,
    required this.modificationType,
    required this.optionCategory,
    required this.option,
    required this.optionItem,
    required this.equipmentOption,
    required this.equipment,
    required this.announcementOption,
    required this.announcementDetail,
    required this.userComparisonCreateList,
    required this.optionList,
    required this.optionListByCategory,
    required this.announcementMinCarPrice,
    required this.myAnnouncement,
    required this.year,
    required this.districtRegion,
    required this.mapScreenshot,
    required this.staticPage,
    required this.usedSocialAuth,
    required this.projectSocialAuths,
    required this.homeAvtouzWebAutoBackendSrcEsAnnouncementsSerializersPyAnnouncementSerializer,
    required this.announcementSuggestTypesense,
    required this.createAnnouncementOrder,
    required this.getLastTransactionStatus,
    required this.payme,
    required this.tariff,
    required this.dealerReels,
    required this.userReels,
    required this.announcementReels,
    required this.listReels,
    required this.likeReels,
    required this.shareReels,
    required this.detailReels,
    required this.additionalService,
    required this.rentCarType,
    required this.rentCarCategory,
    required this.rentCar,
    required this.rent,
    required this.rentCarMainPage,
    required this.rentOrderPost,
    required this.rentOrderGet,
    required this.carReviewCommentCreateUpdate,
    required this.carReviewStarAnswerCreate,
    required this.carReviewCreateUpdate,
    required this.carReviewQuestion,
    required this.carReviewStarAnswerDetail,
    required this.carReview,
    required this.carReviewCommentUser,
    required this.carReviewComment,
    required this.listStories,
    required this.category,
    required this.changePassword,
    required this.userChangePhone,
    required this.sendVerificationCodeForChangePhone,
    required this.dealerType,
    required this.dealerWorkingDays,
    required this.dealer,
    required this.userMini,
    required this.dealerCars,
    required this.dealerMarks,
    required this.userCountData,
    required this.userDetailWithCounts,
    required this.userDetail,
    required this.userDetailEdit,
    required this.userFilterHistoryCreate,
    required this.userFilterHistoryDelete,
    required this.userFilterHistoryList,
    required this.changeForgetPass,
    required this.sendVerificationCode,
    required this.verificationForgetPass,
    required this.tokenObtainPair,
    required this.notificationCategory,
    required this.notification,
    required this.userNotification,
    required this.popularSearch,
    required this.userShortInfo,
    required this.tokenRefresh,
    required this.registerUser,
    required this.verificationRegistrationCode,
    required this.userSearch,
    required this.socialAuthLogin,
    required this.userWishlist,
    required this.userProfileWishlist,
  });

  factory Definitions.fromJson(Map<String, dynamic> json) => Definitions(
        carPlaceCategory: CarPlaceCategory.fromJson(json['CarPlaceCategory']),
        carPlaceMiniCategory: CarPlaceMiniCategory.fromJson(json['CarPlaceMiniCategory']),
        carPlaceWorkingDays: WorkingDays.fromJson(json['CarPlaceWorkingDays']),
        carPlaceList: CarPlaceList.fromJson(json['CarPlaceList']),
        carPlace: CarPlace.fromJson(json['CarPlace']),
        productCategory: ProductCategory.fromJson(json['ProductCategory']),
        product: Product.fromJson(json['Product']),
        announcementFilterCounter: AnnouncementFilterCounter.fromJson(json['AnnouncementFilterCounter']),
        announcementCall: AnnouncementCall.fromJson(json['AnnouncementCall']),
        color: Color.fromJson(json['Color']),
        image: Image.fromJson(json['Image']),
        announcementCompare: AnnouncementCompare.fromJson(json['AnnouncementCompare']),
        carDamagedPart: CarDamagedPart.fromJson(json['CarDamagedPart']),
        rentWithPurchase: DefinitionsRentWithPurchase.fromJson(json['RentWithPurchase']),
        announcementCreate: AnnouncementCreate.fromJson(json['AnnouncementCreate']),
        generation: Generation.fromJson(json['Generation']),
        region: Region.fromJson(json['Region']),
        district: CarReviewQuestion.fromJson(json['District']),
        dealerMini: DealerMini.fromJson(json['DealerMini']),
        gasEquipment: CarPlaceMiniCategory.fromJson(json['GasEquipment']),
        announcement: Announcement.fromJson(json['Announcement']),
        announcementOfDay: AnnouncementOfDay.fromJson(json['AnnouncementOfDay']),
        announcementOwnerDetail: AnnouncementOwnerDetail.fromJson(json['AnnouncementOwnerDetail']),
        announcementAddingPhotoInstructions:
            AnnouncementAddingPhotoInstructions.fromJson(json['AnnouncementAddingPhotoInstructions']),
        sendVerificationCodeForAnnouncement:
            SendVerificationCodeFor.fromJson(json['SendVerificationCodeForAnnouncement']),
        verifyCodeForAnnouncement: UserChangePhone.fromJson(json['VerifyCodeForAnnouncement']),
        announcementVerifyOwnerCreate: AnnouncementVerifyOwnerCreate.fromJson(json['AnnouncementVerifyOwnerCreate']),
        make: Make.fromJson(json['Make']),
        model: CarPlaceMiniCategory.fromJson(json['Model']),
        bodyType: Type.fromJson(json['BodyType']),
        driveType: Type.fromJson(json['DriveType']),
        engineType: Type.fromJson(json['EngineType']),
        gearboxType: Type.fromJson(json['GearboxType']),
        modificationType: ModificationType.fromJson(json['ModificationType']),
        optionCategory: CarPlaceMiniCategory.fromJson(json['OptionCategory']),
        option: OptionClass.fromJson(json['Option']),
        optionItem: CarPlaceMiniCategory.fromJson(json['OptionItem']),
        equipmentOption: MentOption.fromJson(json['EquipmentOption']),
        equipment: Equipment.fromJson(json['Equipment']),
        announcementOption: MentOption.fromJson(json['AnnouncementOption']),
        announcementDetail: AnnouncementDetail.fromJson(json['AnnouncementDetail']),
        userComparisonCreateList: UserComparisonCreateList.fromJson(json['UserComparisonCreateList']),
        optionList: OptionClass.fromJson(json['OptionList']),
        optionListByCategory: Equipment.fromJson(json['OptionListByCategory']),
        announcementMinCarPrice: AnnouncementMinCarPrice.fromJson(json['AnnouncementMinCarPrice']),
        myAnnouncement: MyAnnouncement.fromJson(json['MyAnnouncement']),
        year: YearClass.fromJson(json['Year']),
        districtRegion: DistrictRegion.fromJson(json['DistrictRegion']),
        mapScreenshot: MapScreenshot.fromJson(json['MapScreenshot']),
        staticPage: StaticPage.fromJson(json['StaticPage']),
        usedSocialAuth: CarPlaceMiniCategory.fromJson(json['UsedSocialAuth']),
        projectSocialAuths: ProjectSocialAuths.fromJson(json['ProjectSocialAuths']),
        homeAvtouzWebAutoBackendSrcEsAnnouncementsSerializersPyAnnouncementSerializer:
            HomeAvtouzWebAutoBackendSrcEsAnnouncementsSerializersPyAnnouncementSerializer.fromJson(
                json['/home/avtouz/web/auto-backend/src/es/announcements/serializers.py.AnnouncementSerializer']),
        announcementSuggestTypesense: AnnouncementSuggestTypesense.fromJson(json['AnnouncementSuggestTypesense']),
        createAnnouncementOrder: CreateAnnouncementOrder.fromJson(json['CreateAnnouncementOrder']),
        getLastTransactionStatus: GetLastTransactionStatus.fromJson(json['GetLastTransactionStatus']),
        payme: Payme.fromJson(json['Payme']),
        tariff: Tariff.fromJson(json['Tariff']),
        dealerReels: DealerReels.fromJson(json['DealerReels']),
        userReels: UserReels.fromJson(json['UserReels']),
        announcementReels: AnnouncementReels.fromJson(json['AnnouncementReels']),
        listReels: Reels.fromJson(json['ListReels']),
        likeReels: EReels.fromJson(json['LikeReels']),
        shareReels: EReels.fromJson(json['ShareReels']),
        detailReels: Reels.fromJson(json['DetailReels']),
        additionalService: AdditionalService.fromJson(json['AdditionalService']),
        rentCarType: CarPlaceMiniCategory.fromJson(json['RentCarType']),
        rentCarCategory: CarPlaceMiniCategory.fromJson(json['RentCarCategory']),
        rentCar: RentCar.fromJson(json['RentCar']),
        rent: Rent.fromJson(json['Rent']),
        rentCarMainPage: RentCarMainPage.fromJson(json['RentCarMainPage']),
        rentOrderPost: RentOrder.fromJson(json['RentOrderPost']),
        rentOrderGet: RentOrder.fromJson(json['RentOrderGet']),
        carReviewCommentCreateUpdate: CarReviewCommentCreateUpdate.fromJson(json['CarReviewCommentCreateUpdate']),
        carReviewStarAnswerCreate: CarReviewStarAnswerCreate.fromJson(json['CarReviewStarAnswerCreate']),
        carReviewCreateUpdate: CarReviewCreateUpdate.fromJson(json['CarReviewCreateUpdate']),
        carReviewQuestion: CarReviewQuestion.fromJson(json['CarReviewQuestion']),
        carReviewStarAnswerDetail: CarReviewStarAnswerDetail.fromJson(json['CarReviewStarAnswerDetail']),
        carReview: CarReview.fromJson(json['CarReview']),
        carReviewCommentUser: CarReviewCommentUser.fromJson(json['CarReviewCommentUser']),
        carReviewComment: CarReviewComment.fromJson(json['CarReviewComment']),
        listStories: ListStories.fromJson(json['ListStories']),
        category: Category.fromJson(json['Category']),
        changePassword: ChangePassword.fromJson(json['ChangePassword']),
        userChangePhone: UserChangePhone.fromJson(json['UserChangePhone']),
        sendVerificationCodeForChangePhone:
            SendVerificationCodeFor.fromJson(json['SendVerificationCodeForChangePhone']),
        dealerType: CarPlaceMiniCategory.fromJson(json['DealerType']),
        dealerWorkingDays: WorkingDays.fromJson(json['DealerWorkingDays']),
        dealer: DealerClass.fromJson(json['Dealer']),
        userMini: UserMini.fromJson(json['UserMini']),
        dealerCars: DealerCars.fromJson(json['DealerCars']),
        dealerMarks: DealerMarks.fromJson(json['DealerMarks']),
        userCountData: UserCountData.fromJson(json['UserCountData']),
        userDetailWithCounts: UserDetailWithCounts.fromJson(json['UserDetailWithCounts']),
        userDetail: UserDetail.fromJson(json['UserDetail']),
        userDetailEdit: UserDetailEdit.fromJson(json['UserDetailEdit']),
        userFilterHistoryCreate: UserFilterHistoryCreate.fromJson(json['UserFilterHistoryCreate']),
        userFilterHistoryDelete: UserFilterHistoryDelete.fromJson(json['UserFilterHistoryDelete']),
        userFilterHistoryList: UserFilterHistoryList.fromJson(json['UserFilterHistoryList']),
        changeForgetPass: ChangeForgetPass.fromJson(json['ChangeForgetPass']),
        sendVerificationCode: SendVerificationCode.fromJson(json['SendVerificationCode']),
        verificationForgetPass: Verification.fromJson(json['VerificationForgetPass']),
        tokenObtainPair: ChangeForgetPass.fromJson(json['TokenObtainPair']),
        notificationCategory: CarPlaceMiniCategory.fromJson(json['NotificationCategory']),
        notification: Notification.fromJson(json['Notification']),
        userNotification: UserNotification.fromJson(json['UserNotification']),
        popularSearch: PopularSearch.fromJson(json['PopularSearch']),
        userShortInfo: UserShortInfo.fromJson(json['UserShortInfo']),
        tokenRefresh: TokenRefresh.fromJson(json['TokenRefresh']),
        registerUser: RegisterUser.fromJson(json['RegisterUser']),
        verificationRegistrationCode: Verification.fromJson(json['VerificationRegistrationCode']),
        userSearch: UserSearch.fromJson(json['UserSearch']),
        socialAuthLogin: SocialAuthLogin.fromJson(json['SocialAuthLogin']),
        userWishlist: UserWishlist.fromJson(json['UserWishlist']),
        userProfileWishlist: UserProfileWishlist.fromJson(json['UserProfileWishlist']),
      );

  Map<String, dynamic> toJson() => {
        'CarPlaceCategory': carPlaceCategory.toJson(),
        'CarPlaceMiniCategory': carPlaceMiniCategory.toJson(),
        'CarPlaceWorkingDays': carPlaceWorkingDays.toJson(),
        'CarPlaceList': carPlaceList.toJson(),
        'CarPlace': carPlace.toJson(),
        'ProductCategory': productCategory.toJson(),
        'Product': product.toJson(),
        'AnnouncementFilterCounter': announcementFilterCounter.toJson(),
        'AnnouncementCall': announcementCall.toJson(),
        'Color': color.toJson(),
        'Image': image.toJson(),
        'AnnouncementCompare': announcementCompare.toJson(),
        'CarDamagedPart': carDamagedPart.toJson(),
        'RentWithPurchase': rentWithPurchase.toJson(),
        'AnnouncementCreate': announcementCreate.toJson(),
        'Generation': generation.toJson(),
        'Region': region.toJson(),
        'District': district.toJson(),
        'DealerMini': dealerMini.toJson(),
        'GasEquipment': gasEquipment.toJson(),
        'Announcement': announcement.toJson(),
        'AnnouncementOfDay': announcementOfDay.toJson(),
        'AnnouncementOwnerDetail': announcementOwnerDetail.toJson(),
        'AnnouncementAddingPhotoInstructions': announcementAddingPhotoInstructions.toJson(),
        'SendVerificationCodeForAnnouncement': sendVerificationCodeForAnnouncement.toJson(),
        'VerifyCodeForAnnouncement': verifyCodeForAnnouncement.toJson(),
        'AnnouncementVerifyOwnerCreate': announcementVerifyOwnerCreate.toJson(),
        'Make': make.toJson(),
        'Model': model.toJson(),
        'BodyType': bodyType.toJson(),
        'DriveType': driveType.toJson(),
        'EngineType': engineType.toJson(),
        'GearboxType': gearboxType.toJson(),
        'ModificationType': modificationType.toJson(),
        'OptionCategory': optionCategory.toJson(),
        'Option': option.toJson(),
        'OptionItem': optionItem.toJson(),
        'EquipmentOption': equipmentOption.toJson(),
        'Equipment': equipment.toJson(),
        'AnnouncementOption': announcementOption.toJson(),
        'AnnouncementDetail': announcementDetail.toJson(),
        'UserComparisonCreateList': userComparisonCreateList.toJson(),
        'OptionList': optionList.toJson(),
        'OptionListByCategory': optionListByCategory.toJson(),
        'AnnouncementMinCarPrice': announcementMinCarPrice.toJson(),
        'MyAnnouncement': myAnnouncement.toJson(),
        'Year': year.toJson(),
        'DistrictRegion': districtRegion.toJson(),
        'MapScreenshot': mapScreenshot.toJson(),
        'StaticPage': staticPage.toJson(),
        'UsedSocialAuth': usedSocialAuth.toJson(),
        'ProjectSocialAuths': projectSocialAuths.toJson(),
        '/home/avtouz/web/auto-backend/src/es/announcements/serializers.py.AnnouncementSerializer':
            homeAvtouzWebAutoBackendSrcEsAnnouncementsSerializersPyAnnouncementSerializer.toJson(),
        'AnnouncementSuggestTypesense': announcementSuggestTypesense.toJson(),
        'CreateAnnouncementOrder': createAnnouncementOrder.toJson(),
        'GetLastTransactionStatus': getLastTransactionStatus.toJson(),
        'Payme': payme.toJson(),
        'Tariff': tariff.toJson(),
        'DealerReels': dealerReels.toJson(),
        'UserReels': userReels.toJson(),
        'AnnouncementReels': announcementReels.toJson(),
        'ListReels': listReels.toJson(),
        'LikeReels': likeReels.toJson(),
        'ShareReels': shareReels.toJson(),
        'DetailReels': detailReels.toJson(),
        'AdditionalService': additionalService.toJson(),
        'RentCarType': rentCarType.toJson(),
        'RentCarCategory': rentCarCategory.toJson(),
        'RentCar': rentCar.toJson(),
        'Rent': rent.toJson(),
        'RentCarMainPage': rentCarMainPage.toJson(),
        'RentOrderPost': rentOrderPost.toJson(),
        'RentOrderGet': rentOrderGet.toJson(),
        'CarReviewCommentCreateUpdate': carReviewCommentCreateUpdate.toJson(),
        'CarReviewStarAnswerCreate': carReviewStarAnswerCreate.toJson(),
        'CarReviewCreateUpdate': carReviewCreateUpdate.toJson(),
        'CarReviewQuestion': carReviewQuestion.toJson(),
        'CarReviewStarAnswerDetail': carReviewStarAnswerDetail.toJson(),
        'CarReview': carReview.toJson(),
        'CarReviewCommentUser': carReviewCommentUser.toJson(),
        'CarReviewComment': carReviewComment.toJson(),
        'ListStories': listStories.toJson(),
        'Category': category.toJson(),
        'ChangePassword': changePassword.toJson(),
        'UserChangePhone': userChangePhone.toJson(),
        'SendVerificationCodeForChangePhone': sendVerificationCodeForChangePhone.toJson(),
        'DealerType': dealerType.toJson(),
        'DealerWorkingDays': dealerWorkingDays.toJson(),
        'Dealer': dealer.toJson(),
        'UserMini': userMini.toJson(),
        'DealerCars': dealerCars.toJson(),
        'DealerMarks': dealerMarks.toJson(),
        'UserCountData': userCountData.toJson(),
        'UserDetailWithCounts': userDetailWithCounts.toJson(),
        'UserDetail': userDetail.toJson(),
        'UserDetailEdit': userDetailEdit.toJson(),
        'UserFilterHistoryCreate': userFilterHistoryCreate.toJson(),
        'UserFilterHistoryDelete': userFilterHistoryDelete.toJson(),
        'UserFilterHistoryList': userFilterHistoryList.toJson(),
        'ChangeForgetPass': changeForgetPass.toJson(),
        'SendVerificationCode': sendVerificationCode.toJson(),
        'VerificationForgetPass': verificationForgetPass.toJson(),
        'TokenObtainPair': tokenObtainPair.toJson(),
        'NotificationCategory': notificationCategory.toJson(),
        'Notification': notification.toJson(),
        'UserNotification': userNotification.toJson(),
        'PopularSearch': popularSearch.toJson(),
        'UserShortInfo': userShortInfo.toJson(),
        'TokenRefresh': tokenRefresh.toJson(),
        'RegisterUser': registerUser.toJson(),
        'VerificationRegistrationCode': verificationRegistrationCode.toJson(),
        'UserSearch': userSearch.toJson(),
        'SocialAuthLogin': socialAuthLogin.toJson(),
        'UserWishlist': userWishlist.toJson(),
        'UserProfileWishlist': userProfileWishlist.toJson(),
      };
}

class AdditionalService {
  final List<String> required;
  final String type;
  final AdditionalServiceProperties properties;

  AdditionalService({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory AdditionalService.fromJson(Map<String, dynamic> json) => AdditionalService(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: AdditionalServiceProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}

class AdditionalServiceProperties {
  final IsComparisonClass id;
  final ContactNameClass name;
  final Price price;

  AdditionalServiceProperties({
    required this.id,
    required this.name,
    required this.price,
  });

  factory AdditionalServiceProperties.fromJson(Map<String, dynamic> json) => AdditionalServiceProperties(
        id: IsComparisonClass.fromJson(json['id']),
        name: ContactNameClass.fromJson(json['name']),
        price: Price.fromJson(json['price']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'name': name.toJson(),
        'price': price.toJson(),
      };
}

class IsComparisonClass {
  final String? title;
  final String type;
  final bool readOnly;
  final String? format;
  final bool? xNullable;
  final int? minLength;

  IsComparisonClass({
    this.title,
    required this.type,
    required this.readOnly,
    this.format,
    this.xNullable,
    this.minLength,
  });

  factory IsComparisonClass.fromJson(Map<String, dynamic> json) => IsComparisonClass(
        title: json['title'],
        type: json['type'],
        readOnly: json['readOnly'],
        format: json['format'],
        xNullable: json['x-nullable'],
        minLength: json['minLength'],
      );

  Map<String, dynamic> toJson() => {
        'title': title,
        'type': type,
        'readOnly': readOnly,
        'format': format,
        'x-nullable': xNullable,
        'minLength': minLength,
      };
}

class ContactNameClass {
  final String title;
  final String type;
  final int? minLength;
  final int? maxLength;
  final bool? xNullable;
  final String? pattern;
  final String? format;

  ContactNameClass({
    required this.title,
    required this.type,
    this.minLength,
    this.maxLength,
    this.xNullable,
    this.pattern,
    this.format,
  });

  factory ContactNameClass.fromJson(Map<String, dynamic> json) => ContactNameClass(
        title: json['title'],
        type: json['type'],
        minLength: json['minLength'],
        maxLength: json['maxLength'],
        xNullable: json['x-nullable'],
        pattern: json['pattern'],
        format: json['format'],
      );

  Map<String, dynamic> toJson() => {
        'title': title,
        'type': type,
        'minLength': minLength,
        'maxLength': maxLength,
        'x-nullable': xNullable,
        'pattern': pattern,
        'format': format,
      };
}

class Price {
  final String title;
  final String type;
  final String format;

  Price({
    required this.title,
    required this.type,
    required this.format,
  });

  factory Price.fromJson(Map<String, dynamic> json) => Price(
        title: json['title'],
        type: json['type'],
        format: json['format'],
      );

  Map<String, dynamic> toJson() => {
        'title': title,
        'type': type,
        'format': format,
      };
}

class Announcement {
  final List<String> required;
  final String type;
  final AnnouncementProperties properties;

  Announcement({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory Announcement.fromJson(Map<String, dynamic> json) => Announcement(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: AnnouncementProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}

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

class Currency {
  final String title;
  final String type;
  final List<String> currencyEnum;
  final bool? xNullable;

  Currency({
    required this.title,
    required this.type,
    required this.currencyEnum,
    this.xNullable,
  });

  factory Currency.fromJson(Map<String, dynamic> json) => Currency(
        title: json['title'],
        type: json['type'],
        currencyEnum: List<String>.from(json['enum'].map((x) => x)),
        xNullable: json['x-nullable'],
      );

  Map<String, dynamic> toJson() => {
        'title': title,
        'type': type,
        'enum': List<dynamic>.from(currencyEnum.map((x) => x)),
        'x-nullable': xNullable,
      };
}

class BodyType {
  final String title;
  final String type;

  BodyType({
    required this.title,
    required this.type,
  });

  factory BodyType.fromJson(Map<String, dynamic> json) => BodyType(
        title: json['title'],
        type: json['type'],
      );

  Map<String, dynamic> toJson() => {
        'title': title,
        'type': type,
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

class Year {
  final String title;
  final String type;
  final int maximum;
  final int minimum;
  final bool? xNullable;

  Year({
    required this.title,
    required this.type,
    required this.maximum,
    required this.minimum,
    this.xNullable,
  });

  factory Year.fromJson(Map<String, dynamic> json) => Year(
        title: json['title'],
        type: json['type'],
        maximum: json['maximum'],
        minimum: json['minimum'],
        xNullable: json['x-nullable'],
      );

  Map<String, dynamic> toJson() => {
        'title': title,
        'type': type,
        'maximum': maximum,
        'minimum': minimum,
        'x-nullable': xNullable,
      };
}

class AnnouncementAddingPhotoInstructions {
  final List<String> required;
  final String type;
  final AnnouncementAddingPhotoInstructionsProperties properties;

  AnnouncementAddingPhotoInstructions({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory AnnouncementAddingPhotoInstructions.fromJson(Map<String, dynamic> json) =>
      AnnouncementAddingPhotoInstructions(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: AnnouncementAddingPhotoInstructionsProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}

class AnnouncementAddingPhotoInstructionsProperties {
  final IsComparisonClass id;
  final Year order;
  final ContactNameClass description;
  final IsComparisonClass image;

  AnnouncementAddingPhotoInstructionsProperties({
    required this.id,
    required this.order,
    required this.description,
    required this.image,
  });

  factory AnnouncementAddingPhotoInstructionsProperties.fromJson(Map<String, dynamic> json) =>
      AnnouncementAddingPhotoInstructionsProperties(
        id: IsComparisonClass.fromJson(json['id']),
        order: Year.fromJson(json['order']),
        description: ContactNameClass.fromJson(json['description']),
        image: IsComparisonClass.fromJson(json['image']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'order': order.toJson(),
        'description': description.toJson(),
        'image': image.toJson(),
      };
}

class AnnouncementCall {
  final List<String> required;
  final String type;
  final AnnouncementCallProperties properties;

  AnnouncementCall({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory AnnouncementCall.fromJson(Map<String, dynamic> json) => AnnouncementCall(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: AnnouncementCallProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}

class AnnouncementCallProperties {
  final IsComparisonClass id;
  final BodyType announcement;
  final IsComparisonClass user;

  AnnouncementCallProperties({
    required this.id,
    required this.announcement,
    required this.user,
  });

  factory AnnouncementCallProperties.fromJson(Map<String, dynamic> json) => AnnouncementCallProperties(
        id: IsComparisonClass.fromJson(json['id']),
        announcement: BodyType.fromJson(json['announcement']),
        user: IsComparisonClass.fromJson(json['user']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'announcement': announcement.toJson(),
        'user': user.toJson(),
      };
}

class AnnouncementCompare {
  final List<String> required;
  final String type;
  final AnnouncementCompareProperties properties;

  AnnouncementCompare({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory AnnouncementCompare.fromJson(Map<String, dynamic> json) => AnnouncementCompare(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: AnnouncementCompareProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}

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

class AnnouncementCreate {
  final List<String> required;
  final String type;
  final AnnouncementCreateProperties properties;

  AnnouncementCreate({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory AnnouncementCreate.fromJson(Map<String, dynamic> json) => AnnouncementCreate(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: AnnouncementCreateProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}

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

class AnnouncementDetail {
  final List<String> required;
  final String type;
  final AnnouncementDetailProperties properties;

  AnnouncementDetail({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory AnnouncementDetail.fromJson(Map<String, dynamic> json) => AnnouncementDetail(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: AnnouncementDetailProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}

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

class AnnouncementFilterCounter {
  final List<String> required;
  final String type;
  final AnnouncementFilterCounterProperties properties;

  AnnouncementFilterCounter({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory AnnouncementFilterCounter.fromJson(Map<String, dynamic> json) => AnnouncementFilterCounter(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: AnnouncementFilterCounterProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}

class AnnouncementFilterCounterProperties {
  final BodyType count;

  AnnouncementFilterCounterProperties({
    required this.count,
  });

  factory AnnouncementFilterCounterProperties.fromJson(Map<String, dynamic> json) =>
      AnnouncementFilterCounterProperties(
        count: BodyType.fromJson(json['count']),
      );

  Map<String, dynamic> toJson() => {
        'count': count.toJson(),
      };
}

class AnnouncementMinCarPrice {
  final List<String> required;
  final String type;
  final AnnouncementMinCarPriceProperties properties;

  AnnouncementMinCarPrice({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory AnnouncementMinCarPrice.fromJson(Map<String, dynamic> json) => AnnouncementMinCarPrice(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: AnnouncementMinCarPriceProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}

class AnnouncementMinCarPriceProperties {
  final BodyType make;
  final BodyType model;
  final Currency currency;

  AnnouncementMinCarPriceProperties({
    required this.make,
    required this.model,
    required this.currency,
  });

  factory AnnouncementMinCarPriceProperties.fromJson(Map<String, dynamic> json) => AnnouncementMinCarPriceProperties(
        make: BodyType.fromJson(json['make']),
        model: BodyType.fromJson(json['model']),
        currency: Currency.fromJson(json['currency']),
      );

  Map<String, dynamic> toJson() => {
        'make': make.toJson(),
        'model': model.toJson(),
        'currency': currency.toJson(),
      };
}

class AnnouncementOfDay {
  final List<String> required;
  final String type;
  final AnnouncementOfDayProperties properties;

  AnnouncementOfDay({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory AnnouncementOfDay.fromJson(Map<String, dynamic> json) => AnnouncementOfDay(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: AnnouncementOfDayProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}

class AnnouncementOfDayProperties {
  final IsComparisonClass id;
  final Dealer announcement;

  AnnouncementOfDayProperties({
    required this.id,
    required this.announcement,
  });

  factory AnnouncementOfDayProperties.fromJson(Map<String, dynamic> json) => AnnouncementOfDayProperties(
        id: IsComparisonClass.fromJson(json['id']),
        announcement: Dealer.fromJson(json['announcement']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'announcement': announcement.toJson(),
      };
}

class MentOption {
  final List<String> required;
  final String type;
  final AnnouncementOptionProperties properties;

  MentOption({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory MentOption.fromJson(Map<String, dynamic> json) => MentOption(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: AnnouncementOptionProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}

class AnnouncementOptionProperties {
  final IsComparisonClass id;
  final Dealer option;
  final Dealer item;

  AnnouncementOptionProperties({
    required this.id,
    required this.option,
    required this.item,
  });

  factory AnnouncementOptionProperties.fromJson(Map<String, dynamic> json) => AnnouncementOptionProperties(
        id: IsComparisonClass.fromJson(json['id']),
        option: Dealer.fromJson(json['option']),
        item: Dealer.fromJson(json['item']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'option': option.toJson(),
        'item': item.toJson(),
      };
}

class AnnouncementOwnerDetail {
  final List<String> required;
  final String type;
  final AnnouncementOwnerDetailProperties properties;

  AnnouncementOwnerDetail({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory AnnouncementOwnerDetail.fromJson(Map<String, dynamic> json) => AnnouncementOwnerDetail(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: AnnouncementOwnerDetailProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}

class AnnouncementOwnerDetailProperties {
  final BodyType user;
  final BodyType announcement;

  AnnouncementOwnerDetailProperties({
    required this.user,
    required this.announcement,
  });

  factory AnnouncementOwnerDetailProperties.fromJson(Map<String, dynamic> json) => AnnouncementOwnerDetailProperties(
        user: BodyType.fromJson(json['user']),
        announcement: BodyType.fromJson(json['announcement']),
      );

  Map<String, dynamic> toJson() => {
        'user': user.toJson(),
        'announcement': announcement.toJson(),
      };
}

class AnnouncementReels {
  final List<String> required;
  final String type;
  final AnnouncementReelsProperties properties;

  AnnouncementReels({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory AnnouncementReels.fromJson(Map<String, dynamic> json) => AnnouncementReels(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: AnnouncementReelsProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}

class AnnouncementReelsProperties {
  final IsComparisonClass id;
  final Price price;
  final Currency currency;
  final EquipmentClass discount;

  AnnouncementReelsProperties({
    required this.id,
    required this.price,
    required this.currency,
    required this.discount,
  });

  factory AnnouncementReelsProperties.fromJson(Map<String, dynamic> json) => AnnouncementReelsProperties(
        id: IsComparisonClass.fromJson(json['id']),
        price: Price.fromJson(json['price']),
        currency: Currency.fromJson(json['currency']),
        discount: EquipmentClass.fromJson(json['discount']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'price': price.toJson(),
        'currency': currency.toJson(),
        'discount': discount.toJson(),
      };
}

class AnnouncementSuggestTypesense {
  final List<String> required;
  final String type;
  final AnnouncementSuggestTypesenseProperties properties;

  AnnouncementSuggestTypesense({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory AnnouncementSuggestTypesense.fromJson(Map<String, dynamic> json) => AnnouncementSuggestTypesense(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: AnnouncementSuggestTypesenseProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}

class AnnouncementSuggestTypesenseProperties {
  final Results results;

  AnnouncementSuggestTypesenseProperties({
    required this.results,
  });

  factory AnnouncementSuggestTypesenseProperties.fromJson(Map<String, dynamic> json) =>
      AnnouncementSuggestTypesenseProperties(
        results: Results.fromJson(json['results']),
      );

  Map<String, dynamic> toJson() => {
        'results': results.toJson(),
      };
}

class Results {
  final String type;
  final Items items;

  Results({
    required this.type,
    required this.items,
  });

  factory Results.fromJson(Map<String, dynamic> json) => Results(
        type: json['type'],
        items: Items.fromJson(json['items']),
      );

  Map<String, dynamic> toJson() => {
        'type': type,
        'items': items.toJson(),
      };
}

class Items {
  final String type;
  final int minLength;

  Items({
    required this.type,
    required this.minLength,
  });

  factory Items.fromJson(Map<String, dynamic> json) => Items(
        type: json['type'],
        minLength: json['minLength'],
      );

  Map<String, dynamic> toJson() => {
        'type': type,
        'minLength': minLength,
      };
}

class AnnouncementVerifyOwnerCreate {
  final List<String> required;
  final String type;
  final AnnouncementVerifyOwnerCreateProperties properties;

  AnnouncementVerifyOwnerCreate({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory AnnouncementVerifyOwnerCreate.fromJson(Map<String, dynamic> json) => AnnouncementVerifyOwnerCreate(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: AnnouncementVerifyOwnerCreateProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}

class AnnouncementVerifyOwnerCreateProperties {
  final IsComparisonClass id;
  final BodyType announcement;
  final IsComparisonClass technicalPassportFront;
  final IsComparisonClass technicalPassportBack;
  final IsComparisonClass driverLicenseFront;
  final IsComparisonClass driverLicenseBack;
  final EquipmentClass additionalInfo;
  final EquipmentClass user;

  AnnouncementVerifyOwnerCreateProperties({
    required this.id,
    required this.announcement,
    required this.technicalPassportFront,
    required this.technicalPassportBack,
    required this.driverLicenseFront,
    required this.driverLicenseBack,
    required this.additionalInfo,
    required this.user,
  });

  factory AnnouncementVerifyOwnerCreateProperties.fromJson(Map<String, dynamic> json) =>
      AnnouncementVerifyOwnerCreateProperties(
        id: IsComparisonClass.fromJson(json['id']),
        announcement: BodyType.fromJson(json['announcement']),
        technicalPassportFront: IsComparisonClass.fromJson(json['technical_passport_front']),
        technicalPassportBack: IsComparisonClass.fromJson(json['technical_passport_back']),
        driverLicenseFront: IsComparisonClass.fromJson(json['driver_license_front']),
        driverLicenseBack: IsComparisonClass.fromJson(json['driver_license_back']),
        additionalInfo: EquipmentClass.fromJson(json['additional_info']),
        user: EquipmentClass.fromJson(json['user']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'announcement': announcement.toJson(),
        'technical_passport_front': technicalPassportFront.toJson(),
        'technical_passport_back': technicalPassportBack.toJson(),
        'driver_license_front': driverLicenseFront.toJson(),
        'driver_license_back': driverLicenseBack.toJson(),
        'additional_info': additionalInfo.toJson(),
        'user': user.toJson(),
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

class CarDamagedPart {
  final List<String> required;
  final String type;
  final CarDamagedPartProperties properties;

  CarDamagedPart({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory CarDamagedPart.fromJson(Map<String, dynamic> json) => CarDamagedPart(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: CarDamagedPartProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}

class CarDamagedPartProperties {
  final Currency propertiesPart;
  final Currency damageType;

  CarDamagedPartProperties({
    required this.propertiesPart,
    required this.damageType,
  });

  factory CarDamagedPartProperties.fromJson(Map<String, dynamic> json) => CarDamagedPartProperties(
        propertiesPart: Currency.fromJson(json['part']),
        damageType: Currency.fromJson(json['damage_type']),
      );

  Map<String, dynamic> toJson() => {
        'part': propertiesPart.toJson(),
        'damage_type': damageType.toJson(),
      };
}

class CarPlace {
  final List<String> required;
  final String type;
  final CarPlaceProperties properties;

  CarPlace({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory CarPlace.fromJson(Map<String, dynamic> json) => CarPlace(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: CarPlaceProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}

class CarPlaceProperties {
  final IsComparisonClass id;
  final ContactNameClass name;
  final ContactNameClass phone;
  final RentWithPurchaseClass category;
  final EquipmentClass contactFrom;
  final EquipmentClass contactTo;
  final EquipmentClass longitude;
  final EquipmentClass latitude;
  final EquipmentClass description;
  final ContactNameClass address;
  final ContactNameClass region;
  final IsComparisonClass gallery;
  final EquipmentClass slug;
  final RentWithPurchaseClass workingDays;
  final IsComparisonClass isWorkingAllDays;

  CarPlaceProperties({
    required this.id,
    required this.name,
    required this.phone,
    required this.category,
    required this.contactFrom,
    required this.contactTo,
    required this.longitude,
    required this.latitude,
    required this.description,
    required this.address,
    required this.region,
    required this.gallery,
    required this.slug,
    required this.workingDays,
    required this.isWorkingAllDays,
  });

  factory CarPlaceProperties.fromJson(Map<String, dynamic> json) => CarPlaceProperties(
        id: IsComparisonClass.fromJson(json['id']),
        name: ContactNameClass.fromJson(json['name']),
        phone: ContactNameClass.fromJson(json['phone']),
        category: RentWithPurchaseClass.fromJson(json['category']),
        contactFrom: EquipmentClass.fromJson(json['contact_from']),
        contactTo: EquipmentClass.fromJson(json['contact_to']),
        longitude: EquipmentClass.fromJson(json['longitude']),
        latitude: EquipmentClass.fromJson(json['latitude']),
        description: EquipmentClass.fromJson(json['description']),
        address: ContactNameClass.fromJson(json['address']),
        region: ContactNameClass.fromJson(json['region']),
        gallery: IsComparisonClass.fromJson(json['gallery']),
        slug: EquipmentClass.fromJson(json['slug']),
        workingDays: RentWithPurchaseClass.fromJson(json['working_days']),
        isWorkingAllDays: IsComparisonClass.fromJson(json['is_working_all_days']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'name': name.toJson(),
        'phone': phone.toJson(),
        'category': category.toJson(),
        'contact_from': contactFrom.toJson(),
        'contact_to': contactTo.toJson(),
        'longitude': longitude.toJson(),
        'latitude': latitude.toJson(),
        'description': description.toJson(),
        'address': address.toJson(),
        'region': region.toJson(),
        'gallery': gallery.toJson(),
        'slug': slug.toJson(),
        'working_days': workingDays.toJson(),
        'is_working_all_days': isWorkingAllDays.toJson(),
      };
}

class CarPlaceCategory {
  final List<String> required;
  final String type;
  final CarPlaceCategoryProperties properties;

  CarPlaceCategory({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory CarPlaceCategory.fromJson(Map<String, dynamic> json) => CarPlaceCategory(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: CarPlaceCategoryProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}

class CarPlaceCategoryProperties {
  final IsComparisonClass id;
  final ContactNameClass name;
  final IsComparisonClass carPlaceCount;

  CarPlaceCategoryProperties({
    required this.id,
    required this.name,
    required this.carPlaceCount,
  });

  factory CarPlaceCategoryProperties.fromJson(Map<String, dynamic> json) => CarPlaceCategoryProperties(
        id: IsComparisonClass.fromJson(json['id']),
        name: ContactNameClass.fromJson(json['name']),
        carPlaceCount: IsComparisonClass.fromJson(json['car_place_count']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'name': name.toJson(),
        'car_place_count': carPlaceCount.toJson(),
      };
}

class CarPlaceList {
  final List<String> required;
  final String type;
  final CarPlaceListProperties properties;

  CarPlaceList({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory CarPlaceList.fromJson(Map<String, dynamic> json) => CarPlaceList(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: CarPlaceListProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}

class CarPlaceListProperties {
  final IsComparisonClass id;
  final ContactNameClass name;
  final EquipmentClass slug;
  final RentWithPurchaseClass category;
  final ContactNameClass address;
  final ContactNameClass region;
  final EquipmentClass latitude;
  final EquipmentClass longitude;
  final RentWithPurchaseClass workingDays;
  final IsComparisonClass isWorkingAllDays;

  CarPlaceListProperties({
    required this.id,
    required this.name,
    required this.slug,
    required this.category,
    required this.address,
    required this.region,
    required this.latitude,
    required this.longitude,
    required this.workingDays,
    required this.isWorkingAllDays,
  });

  factory CarPlaceListProperties.fromJson(Map<String, dynamic> json) => CarPlaceListProperties(
        id: IsComparisonClass.fromJson(json['id']),
        name: ContactNameClass.fromJson(json['name']),
        slug: EquipmentClass.fromJson(json['slug']),
        category: RentWithPurchaseClass.fromJson(json['category']),
        address: ContactNameClass.fromJson(json['address']),
        region: ContactNameClass.fromJson(json['region']),
        latitude: EquipmentClass.fromJson(json['latitude']),
        longitude: EquipmentClass.fromJson(json['longitude']),
        workingDays: RentWithPurchaseClass.fromJson(json['working_days']),
        isWorkingAllDays: IsComparisonClass.fromJson(json['is_working_all_days']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'name': name.toJson(),
        'slug': slug.toJson(),
        'category': category.toJson(),
        'address': address.toJson(),
        'region': region.toJson(),
        'latitude': latitude.toJson(),
        'longitude': longitude.toJson(),
        'working_days': workingDays.toJson(),
        'is_working_all_days': isWorkingAllDays.toJson(),
      };
}

class CarPlaceMiniCategory {
  final List<String> required;
  final String type;
  final CarPlaceMiniCategoryProperties properties;

  CarPlaceMiniCategory({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory CarPlaceMiniCategory.fromJson(Map<String, dynamic> json) => CarPlaceMiniCategory(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: CarPlaceMiniCategoryProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}

class CarPlaceMiniCategoryProperties {
  final IsComparisonClass id;
  final ContactNameClass name;

  CarPlaceMiniCategoryProperties({
    required this.id,
    required this.name,
  });

  factory CarPlaceMiniCategoryProperties.fromJson(Map<String, dynamic> json) => CarPlaceMiniCategoryProperties(
        id: IsComparisonClass.fromJson(json['id']),
        name: ContactNameClass.fromJson(json['name']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'name': name.toJson(),
      };
}

class WorkingDays {
  final List<String> required;
  final String type;
  final CarPlaceWorkingDaysProperties properties;

  WorkingDays({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory WorkingDays.fromJson(Map<String, dynamic> json) => WorkingDays(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: CarPlaceWorkingDaysProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}

class CarPlaceWorkingDaysProperties {
  final Currency dayOfWeek;

  CarPlaceWorkingDaysProperties({
    required this.dayOfWeek,
  });

  factory CarPlaceWorkingDaysProperties.fromJson(Map<String, dynamic> json) => CarPlaceWorkingDaysProperties(
        dayOfWeek: Currency.fromJson(json['day_of_week']),
      );

  Map<String, dynamic> toJson() => {
        'day_of_week': dayOfWeek.toJson(),
      };
}

class CarReview {
  final List<String> required;
  final String type;
  final CarReviewProperties properties;

  CarReview({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory CarReview.fromJson(Map<String, dynamic> json) => CarReview(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: CarReviewProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}

class CarReviewProperties {
  final IsComparisonClass id;
  final Dealer make;
  final Dealer model;
  final Dealer generation;
  final Dealer bodyType;
  final Dealer driveType;
  final Dealer engineType;
  final Dealer gearboxType;
  final Dealer modificationType;
  final ContactNameClass absoluteCarName;
  final ContactNameClass title;
  final ContactNameClass comment;
  final ContactNameClass tenure;
  final Tives positives;
  final Tives negatives;
  final EquipmentClass avgStar;
  final RentWithPurchaseClass starAnswers;
  final Currency status;
  final BodyType archived;
  final IsComparisonClass isMine;
  final Year viewsCount;
  final Year commentsCount;

  CarReviewProperties({
    required this.id,
    required this.make,
    required this.model,
    required this.generation,
    required this.bodyType,
    required this.driveType,
    required this.engineType,
    required this.gearboxType,
    required this.modificationType,
    required this.absoluteCarName,
    required this.title,
    required this.comment,
    required this.tenure,
    required this.positives,
    required this.negatives,
    required this.avgStar,
    required this.starAnswers,
    required this.status,
    required this.archived,
    required this.isMine,
    required this.viewsCount,
    required this.commentsCount,
  });

  factory CarReviewProperties.fromJson(Map<String, dynamic> json) => CarReviewProperties(
        id: IsComparisonClass.fromJson(json['id']),
        make: Dealer.fromJson(json['make']),
        model: Dealer.fromJson(json['model']),
        generation: Dealer.fromJson(json['generation']),
        bodyType: Dealer.fromJson(json['body_type']),
        driveType: Dealer.fromJson(json['drive_type']),
        engineType: Dealer.fromJson(json['engine_type']),
        gearboxType: Dealer.fromJson(json['gearbox_type']),
        modificationType: Dealer.fromJson(json['modification_type']),
        absoluteCarName: ContactNameClass.fromJson(json['absolute_car_name']),
        title: ContactNameClass.fromJson(json['title']),
        comment: ContactNameClass.fromJson(json['comment']),
        tenure: ContactNameClass.fromJson(json['tenure']),
        positives: Tives.fromJson(json['positives']),
        negatives: Tives.fromJson(json['negatives']),
        avgStar: EquipmentClass.fromJson(json['avg_star']),
        starAnswers: RentWithPurchaseClass.fromJson(json['star_answers']),
        status: Currency.fromJson(json['status']),
        archived: BodyType.fromJson(json['archived']),
        isMine: IsComparisonClass.fromJson(json['is_mine']),
        viewsCount: Year.fromJson(json['views_count']),
        commentsCount: Year.fromJson(json['comments_count']),
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
        'modification_type': modificationType.toJson(),
        'absolute_car_name': absoluteCarName.toJson(),
        'title': title.toJson(),
        'comment': comment.toJson(),
        'tenure': tenure.toJson(),
        'positives': positives.toJson(),
        'negatives': negatives.toJson(),
        'avg_star': avgStar.toJson(),
        'star_answers': starAnswers.toJson(),
        'status': status.toJson(),
        'archived': archived.toJson(),
        'is_mine': isMine.toJson(),
        'views_count': viewsCount.toJson(),
        'comments_count': commentsCount.toJson(),
      };
}

class Tives {
  final String type;
  final ContactNameClass items;

  Tives({
    required this.type,
    required this.items,
  });

  factory Tives.fromJson(Map<String, dynamic> json) => Tives(
        type: json['type'],
        items: ContactNameClass.fromJson(json['items']),
      );

  Map<String, dynamic> toJson() => {
        'type': type,
        'items': items.toJson(),
      };
}

class CarReviewComment {
  final List<String> required;
  final String type;
  final CarReviewCommentProperties properties;

  CarReviewComment({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory CarReviewComment.fromJson(Map<String, dynamic> json) => CarReviewComment(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: CarReviewCommentProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}

class CarReviewCommentProperties {
  final IsComparisonClass id;
  final Dealer user;
  final ContactNameClass text;
  final IsComparisonClass createdAt;
  final IsComparisonClass updatedAt;
  final BodyType edited;

  CarReviewCommentProperties({
    required this.id,
    required this.user,
    required this.text,
    required this.createdAt,
    required this.updatedAt,
    required this.edited,
  });

  factory CarReviewCommentProperties.fromJson(Map<String, dynamic> json) => CarReviewCommentProperties(
        id: IsComparisonClass.fromJson(json['id']),
        user: Dealer.fromJson(json['user']),
        text: ContactNameClass.fromJson(json['text']),
        createdAt: IsComparisonClass.fromJson(json['created_at']),
        updatedAt: IsComparisonClass.fromJson(json['updated_at']),
        edited: BodyType.fromJson(json['edited']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'user': user.toJson(),
        'text': text.toJson(),
        'created_at': createdAt.toJson(),
        'updated_at': updatedAt.toJson(),
        'edited': edited.toJson(),
      };
}

class CarReviewCommentCreateUpdate {
  final List<String> required;
  final String type;
  final CarReviewCommentCreateUpdateProperties properties;

  CarReviewCommentCreateUpdate({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory CarReviewCommentCreateUpdate.fromJson(Map<String, dynamic> json) => CarReviewCommentCreateUpdate(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: CarReviewCommentCreateUpdateProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}

class CarReviewCommentCreateUpdateProperties {
  final IsComparisonClass id;
  final ContactNameClass text;
  final IsComparisonClass createdAt;

  CarReviewCommentCreateUpdateProperties({
    required this.id,
    required this.text,
    required this.createdAt,
  });

  factory CarReviewCommentCreateUpdateProperties.fromJson(Map<String, dynamic> json) =>
      CarReviewCommentCreateUpdateProperties(
        id: IsComparisonClass.fromJson(json['id']),
        text: ContactNameClass.fromJson(json['text']),
        createdAt: IsComparisonClass.fromJson(json['created_at']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'text': text.toJson(),
        'created_at': createdAt.toJson(),
      };
}

class CarReviewCommentUser {
  final String type;
  final CarReviewCommentUserProperties properties;

  CarReviewCommentUser({
    required this.type,
    required this.properties,
  });

  factory CarReviewCommentUser.fromJson(Map<String, dynamic> json) => CarReviewCommentUser(
        type: json['type'],
        properties: CarReviewCommentUserProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'type': type,
        'properties': properties.toJson(),
      };
}

class CarReviewCommentUserProperties {
  final IsComparisonClass id;
  final ContactNameClass fullName;
  final IsComparisonClass image;

  CarReviewCommentUserProperties({
    required this.id,
    required this.fullName,
    required this.image,
  });

  factory CarReviewCommentUserProperties.fromJson(Map<String, dynamic> json) => CarReviewCommentUserProperties(
        id: IsComparisonClass.fromJson(json['id']),
        fullName: ContactNameClass.fromJson(json['full_name']),
        image: IsComparisonClass.fromJson(json['image']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'full_name': fullName.toJson(),
        'image': image.toJson(),
      };
}

class CarReviewCreateUpdate {
  final List<String> required;
  final String type;
  final CarReviewCreateUpdateProperties properties;

  CarReviewCreateUpdate({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory CarReviewCreateUpdate.fromJson(Map<String, dynamic> json) => CarReviewCreateUpdate(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: CarReviewCreateUpdateProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}

class CarReviewCreateUpdateProperties {
  final IsComparisonClass id;
  final ContactNameClass title;
  final ContactNameClass comment;
  final ContactNameClass tenure;
  final Tives positives;
  final Tives negatives;
  final IsComparisonClass avgStar;
  final RentWithPurchaseClass starAnswers;
  final BodyType make;
  final BodyType model;
  final EquipmentClass generation;
  final EquipmentClass bodyType;
  final EquipmentClass driveType;
  final EquipmentClass engineType;
  final EquipmentClass gearboxType;
  final Year year;
  final EquipmentClass modificationType;

  CarReviewCreateUpdateProperties({
    required this.id,
    required this.title,
    required this.comment,
    required this.tenure,
    required this.positives,
    required this.negatives,
    required this.avgStar,
    required this.starAnswers,
    required this.make,
    required this.model,
    required this.generation,
    required this.bodyType,
    required this.driveType,
    required this.engineType,
    required this.gearboxType,
    required this.year,
    required this.modificationType,
  });

  factory CarReviewCreateUpdateProperties.fromJson(Map<String, dynamic> json) => CarReviewCreateUpdateProperties(
        id: IsComparisonClass.fromJson(json['id']),
        title: ContactNameClass.fromJson(json['title']),
        comment: ContactNameClass.fromJson(json['comment']),
        tenure: ContactNameClass.fromJson(json['tenure']),
        positives: Tives.fromJson(json['positives']),
        negatives: Tives.fromJson(json['negatives']),
        avgStar: IsComparisonClass.fromJson(json['avg_star']),
        starAnswers: RentWithPurchaseClass.fromJson(json['star_answers']),
        make: BodyType.fromJson(json['make']),
        model: BodyType.fromJson(json['model']),
        generation: EquipmentClass.fromJson(json['generation']),
        bodyType: EquipmentClass.fromJson(json['body_type']),
        driveType: EquipmentClass.fromJson(json['drive_type']),
        engineType: EquipmentClass.fromJson(json['engine_type']),
        gearboxType: EquipmentClass.fromJson(json['gearbox_type']),
        year: Year.fromJson(json['year']),
        modificationType: EquipmentClass.fromJson(json['modification_type']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'title': title.toJson(),
        'comment': comment.toJson(),
        'tenure': tenure.toJson(),
        'positives': positives.toJson(),
        'negatives': negatives.toJson(),
        'avg_star': avgStar.toJson(),
        'star_answers': starAnswers.toJson(),
        'make': make.toJson(),
        'model': model.toJson(),
        'generation': generation.toJson(),
        'body_type': bodyType.toJson(),
        'drive_type': driveType.toJson(),
        'engine_type': engineType.toJson(),
        'gearbox_type': gearboxType.toJson(),
        'year': year.toJson(),
        'modification_type': modificationType.toJson(),
      };
}

class CarReviewQuestion {
  final List<String> required;
  final String type;
  final CarReviewQuestionProperties properties;

  CarReviewQuestion({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory CarReviewQuestion.fromJson(Map<String, dynamic> json) => CarReviewQuestion(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: CarReviewQuestionProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}

class CarReviewQuestionProperties {
  final IsComparisonClass id;
  final ContactNameClass title;

  CarReviewQuestionProperties({
    required this.id,
    required this.title,
  });

  factory CarReviewQuestionProperties.fromJson(Map<String, dynamic> json) => CarReviewQuestionProperties(
        id: IsComparisonClass.fromJson(json['id']),
        title: ContactNameClass.fromJson(json['title']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'title': title.toJson(),
      };
}

class CarReviewStarAnswerCreate {
  final List<String> required;
  final String type;
  final CarReviewStarAnswerCreateProperties properties;

  CarReviewStarAnswerCreate({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory CarReviewStarAnswerCreate.fromJson(Map<String, dynamic> json) => CarReviewStarAnswerCreate(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: CarReviewStarAnswerCreateProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}

class CarReviewStarAnswerCreateProperties {
  final BodyType question;
  final Year starCount;

  CarReviewStarAnswerCreateProperties({
    required this.question,
    required this.starCount,
  });

  factory CarReviewStarAnswerCreateProperties.fromJson(Map<String, dynamic> json) =>
      CarReviewStarAnswerCreateProperties(
        question: BodyType.fromJson(json['question']),
        starCount: Year.fromJson(json['star_count']),
      );

  Map<String, dynamic> toJson() => {
        'question': question.toJson(),
        'star_count': starCount.toJson(),
      };
}

class CarReviewStarAnswerDetail {
  final List<String> required;
  final String type;
  final CarReviewStarAnswerDetailProperties properties;

  CarReviewStarAnswerDetail({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory CarReviewStarAnswerDetail.fromJson(Map<String, dynamic> json) => CarReviewStarAnswerDetail(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: CarReviewStarAnswerDetailProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}

class CarReviewStarAnswerDetailProperties {
  final Dealer question;
  final Year starCount;

  CarReviewStarAnswerDetailProperties({
    required this.question,
    required this.starCount,
  });

  factory CarReviewStarAnswerDetailProperties.fromJson(Map<String, dynamic> json) =>
      CarReviewStarAnswerDetailProperties(
        question: Dealer.fromJson(json['question']),
        starCount: Year.fromJson(json['star_count']),
      );

  Map<String, dynamic> toJson() => {
        'question': question.toJson(),
        'star_count': starCount.toJson(),
      };
}

class Category {
  final List<String> required;
  final String type;
  final CategoryProperties properties;

  Category({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: CategoryProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}

class CategoryProperties {
  final IsComparisonClass id;
  final ContactNameClass name;
  final Slug slug;
  final IsComparisonClass coverImageThumbnail;
  final BodyType isRead;
  final RentWithPurchaseClass items;

  CategoryProperties({
    required this.id,
    required this.name,
    required this.slug,
    required this.coverImageThumbnail,
    required this.isRead,
    required this.items,
  });

  factory CategoryProperties.fromJson(Map<String, dynamic> json) => CategoryProperties(
        id: IsComparisonClass.fromJson(json['id']),
        name: ContactNameClass.fromJson(json['name']),
        slug: Slug.fromJson(json['slug']),
        coverImageThumbnail: IsComparisonClass.fromJson(json['cover_image_thumbnail']),
        isRead: BodyType.fromJson(json['is_read']),
        items: RentWithPurchaseClass.fromJson(json['items']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'name': name.toJson(),
        'slug': slug.toJson(),
        'cover_image_thumbnail': coverImageThumbnail.toJson(),
        'is_read': isRead.toJson(),
        'items': items.toJson(),
      };
}

class Slug {
  final String title;
  final String type;
  final String format;
  final String pattern;
  final bool readOnly;
  final int minLength;

  Slug({
    required this.title,
    required this.type,
    required this.format,
    required this.pattern,
    required this.readOnly,
    required this.minLength,
  });

  factory Slug.fromJson(Map<String, dynamic> json) => Slug(
        title: json['title'],
        type: json['type'],
        format: json['format'],
        pattern: json['pattern'],
        readOnly: json['readOnly'],
        minLength: json['minLength'],
      );

  Map<String, dynamic> toJson() => {
        'title': title,
        'type': type,
        'format': format,
        'pattern': pattern,
        'readOnly': readOnly,
        'minLength': minLength,
      };
}

class ChangeForgetPass {
  final List<String> required;
  final String type;
  final ChangeForgetPassProperties properties;

  ChangeForgetPass({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory ChangeForgetPass.fromJson(Map<String, dynamic> json) => ChangeForgetPass(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: ChangeForgetPassProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}

class ChangeForgetPassProperties {
  final ContactNameClass phoneNumber;
  final ContactNameClass password;

  ChangeForgetPassProperties({
    required this.phoneNumber,
    required this.password,
  });

  factory ChangeForgetPassProperties.fromJson(Map<String, dynamic> json) => ChangeForgetPassProperties(
        phoneNumber: ContactNameClass.fromJson(json['phone_number']),
        password: ContactNameClass.fromJson(json['password']),
      );

  Map<String, dynamic> toJson() => {
        'phone_number': phoneNumber.toJson(),
        'password': password.toJson(),
      };
}

class ChangePassword {
  final List<String> required;
  final String type;
  final ChangePasswordProperties properties;

  ChangePassword({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory ChangePassword.fromJson(Map<String, dynamic> json) => ChangePassword(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: ChangePasswordProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}

class ChangePasswordProperties {
  final ContactNameClass oldPassword;
  final ContactNameClass newPassword;

  ChangePasswordProperties({
    required this.oldPassword,
    required this.newPassword,
  });

  factory ChangePasswordProperties.fromJson(Map<String, dynamic> json) => ChangePasswordProperties(
        oldPassword: ContactNameClass.fromJson(json['old_password']),
        newPassword: ContactNameClass.fromJson(json['new_password']),
      );

  Map<String, dynamic> toJson() => {
        'old_password': oldPassword.toJson(),
        'new_password': newPassword.toJson(),
      };
}

class Color {
  final List<String> required;
  final String type;
  final ColorProperties properties;

  Color({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory Color.fromJson(Map<String, dynamic> json) => Color(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: ColorProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}

class ColorProperties {
  final IsComparisonClass id;
  final ContactNameClass name;
  final ContactNameClass hexCode;

  ColorProperties({
    required this.id,
    required this.name,
    required this.hexCode,
  });

  factory ColorProperties.fromJson(Map<String, dynamic> json) => ColorProperties(
        id: IsComparisonClass.fromJson(json['id']),
        name: ContactNameClass.fromJson(json['name']),
        hexCode: ContactNameClass.fromJson(json['hex_code']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'name': name.toJson(),
        'hex_code': hexCode.toJson(),
      };
}

class CreateAnnouncementOrder {
  final List<String> required;
  final String type;
  final CreateAnnouncementOrderProperties properties;

  CreateAnnouncementOrder({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory CreateAnnouncementOrder.fromJson(Map<String, dynamic> json) => CreateAnnouncementOrder(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: CreateAnnouncementOrderProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}

class CreateAnnouncementOrderProperties {
  final IsComparisonClass id;
  final EquipmentClass announcement;
  final Currency provider;
  final ContactNameClass redirectUrl;
  final IsComparisonClass paymentUrl;
  final IsComparisonClass amount;
  final Currency tariffType;
  final IsComparisonClass reelsFile;

  CreateAnnouncementOrderProperties({
    required this.id,
    required this.announcement,
    required this.provider,
    required this.redirectUrl,
    required this.paymentUrl,
    required this.amount,
    required this.tariffType,
    required this.reelsFile,
  });

  factory CreateAnnouncementOrderProperties.fromJson(Map<String, dynamic> json) => CreateAnnouncementOrderProperties(
        id: IsComparisonClass.fromJson(json['id']),
        announcement: EquipmentClass.fromJson(json['announcement']),
        provider: Currency.fromJson(json['provider']),
        redirectUrl: ContactNameClass.fromJson(json['redirect_url']),
        paymentUrl: IsComparisonClass.fromJson(json['payment_url']),
        amount: IsComparisonClass.fromJson(json['amount']),
        tariffType: Currency.fromJson(json['tariff_type']),
        reelsFile: IsComparisonClass.fromJson(json['reels_file']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'announcement': announcement.toJson(),
        'provider': provider.toJson(),
        'redirect_url': redirectUrl.toJson(),
        'payment_url': paymentUrl.toJson(),
        'amount': amount.toJson(),
        'tariff_type': tariffType.toJson(),
        'reels_file': reelsFile.toJson(),
      };
}

class DealerClass {
  final List<String> required;
  final String type;
  final DealerProperties properties;

  DealerClass({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory DealerClass.fromJson(Map<String, dynamic> json) => DealerClass(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: DealerProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}

class DealerProperties {
  final IsComparisonClass id;
  final ContactNameClass name;
  final ContactNameClass slug;
  final EquipmentClass description;
  final ContactNameClass phoneNumber;
  final IsComparisonClass avatar;
  final EquipmentClass contactFrom;
  final EquipmentClass contactTo;
  final EquipmentClass locationUrl;
  final EquipmentClass longitude;
  final EquipmentClass latitude;
  final Dealer district;
  final Year carCount;
  final Dealer dealerType;
  final RentWithPurchaseClass gallery;
  final ContactNameClass address;
  final IsComparisonClass isWorkingAllDays;
  final RentWithPurchaseClass workingDays;

  DealerProperties({
    required this.id,
    required this.name,
    required this.slug,
    required this.description,
    required this.phoneNumber,
    required this.avatar,
    required this.contactFrom,
    required this.contactTo,
    required this.locationUrl,
    required this.longitude,
    required this.latitude,
    required this.district,
    required this.carCount,
    required this.dealerType,
    required this.gallery,
    required this.address,
    required this.isWorkingAllDays,
    required this.workingDays,
  });

  factory DealerProperties.fromJson(Map<String, dynamic> json) => DealerProperties(
        id: IsComparisonClass.fromJson(json['id']),
        name: ContactNameClass.fromJson(json['name']),
        slug: ContactNameClass.fromJson(json['slug']),
        description: EquipmentClass.fromJson(json['description']),
        phoneNumber: ContactNameClass.fromJson(json['phone_number']),
        avatar: IsComparisonClass.fromJson(json['avatar']),
        contactFrom: EquipmentClass.fromJson(json['contact_from']),
        contactTo: EquipmentClass.fromJson(json['contact_to']),
        locationUrl: EquipmentClass.fromJson(json['location_url']),
        longitude: EquipmentClass.fromJson(json['longitude']),
        latitude: EquipmentClass.fromJson(json['latitude']),
        district: Dealer.fromJson(json['district']),
        carCount: Year.fromJson(json['car_count']),
        dealerType: Dealer.fromJson(json['dealer_type']),
        gallery: RentWithPurchaseClass.fromJson(json['gallery']),
        address: ContactNameClass.fromJson(json['address']),
        isWorkingAllDays: IsComparisonClass.fromJson(json['is_working_all_days']),
        workingDays: RentWithPurchaseClass.fromJson(json['working_days']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'name': name.toJson(),
        'slug': slug.toJson(),
        'description': description.toJson(),
        'phone_number': phoneNumber.toJson(),
        'avatar': avatar.toJson(),
        'contact_from': contactFrom.toJson(),
        'contact_to': contactTo.toJson(),
        'location_url': locationUrl.toJson(),
        'longitude': longitude.toJson(),
        'latitude': latitude.toJson(),
        'district': district.toJson(),
        'car_count': carCount.toJson(),
        'dealer_type': dealerType.toJson(),
        'gallery': gallery.toJson(),
        'address': address.toJson(),
        'is_working_all_days': isWorkingAllDays.toJson(),
        'working_days': workingDays.toJson(),
      };
}

class DealerCars {
  final List<String> required;
  final String type;
  final DealerCarsProperties properties;

  DealerCars({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory DealerCars.fromJson(Map<String, dynamic> json) => DealerCars(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: DealerCarsProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}

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

class DealerMarks {
  final List<String> required;
  final String type;
  final DealerMarksProperties properties;

  DealerMarks({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory DealerMarks.fromJson(Map<String, dynamic> json) => DealerMarks(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: DealerMarksProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}

class DealerMarksProperties {
  final Dealer make;
  final IsComparisonClass carsCount;

  DealerMarksProperties({
    required this.make,
    required this.carsCount,
  });

  factory DealerMarksProperties.fromJson(Map<String, dynamic> json) => DealerMarksProperties(
        make: Dealer.fromJson(json['make']),
        carsCount: IsComparisonClass.fromJson(json['cars_count']),
      );

  Map<String, dynamic> toJson() => {
        'make': make.toJson(),
        'cars_count': carsCount.toJson(),
      };
}

class DealerMini {
  final List<String> required;
  final String type;
  final DealerMiniProperties properties;

  DealerMini({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory DealerMini.fromJson(Map<String, dynamic> json) => DealerMini(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: DealerMiniProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}

class DealerMiniProperties {
  final IsComparisonClass id;
  final ContactNameClass name;
  final ContactNameClass slug;
  final IsComparisonClass avatar;
  final EquipmentClass description;
  final ContactNameClass phoneNumber;
  final EquipmentClass contactFrom;
  final EquipmentClass contactTo;
  final EquipmentClass longitude;
  final EquipmentClass latitude;
  final Dealer district;
  final Year carCount;

  DealerMiniProperties({
    required this.id,
    required this.name,
    required this.slug,
    required this.avatar,
    required this.description,
    required this.phoneNumber,
    required this.contactFrom,
    required this.contactTo,
    required this.longitude,
    required this.latitude,
    required this.district,
    required this.carCount,
  });

  factory DealerMiniProperties.fromJson(Map<String, dynamic> json) => DealerMiniProperties(
        id: IsComparisonClass.fromJson(json['id']),
        name: ContactNameClass.fromJson(json['name']),
        slug: ContactNameClass.fromJson(json['slug']),
        avatar: IsComparisonClass.fromJson(json['avatar']),
        description: EquipmentClass.fromJson(json['description']),
        phoneNumber: ContactNameClass.fromJson(json['phone_number']),
        contactFrom: EquipmentClass.fromJson(json['contact_from']),
        contactTo: EquipmentClass.fromJson(json['contact_to']),
        longitude: EquipmentClass.fromJson(json['longitude']),
        latitude: EquipmentClass.fromJson(json['latitude']),
        district: Dealer.fromJson(json['district']),
        carCount: Year.fromJson(json['car_count']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'name': name.toJson(),
        'slug': slug.toJson(),
        'avatar': avatar.toJson(),
        'description': description.toJson(),
        'phone_number': phoneNumber.toJson(),
        'contact_from': contactFrom.toJson(),
        'contact_to': contactTo.toJson(),
        'longitude': longitude.toJson(),
        'latitude': latitude.toJson(),
        'district': district.toJson(),
        'car_count': carCount.toJson(),
      };
}

class DealerReels {
  final List<String> required;
  final String type;
  final DealerReelsProperties properties;

  DealerReels({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory DealerReels.fromJson(Map<String, dynamic> json) => DealerReels(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: DealerReelsProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}

class DealerReelsProperties {
  final IsComparisonClass id;
  final ContactNameClass name;
  final Dealer avatar;
  final ContactNameClass slug;

  DealerReelsProperties({
    required this.id,
    required this.name,
    required this.avatar,
    required this.slug,
  });

  factory DealerReelsProperties.fromJson(Map<String, dynamic> json) => DealerReelsProperties(
        id: IsComparisonClass.fromJson(json['id']),
        name: ContactNameClass.fromJson(json['name']),
        avatar: Dealer.fromJson(json['avatar']),
        slug: ContactNameClass.fromJson(json['slug']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'name': name.toJson(),
        'avatar': avatar.toJson(),
        'slug': slug.toJson(),
      };
}

class Reels {
  final List<String> required;
  final String type;
  final DetailReelsProperties properties;

  Reels({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory Reels.fromJson(Map<String, dynamic> json) => Reels(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: DetailReelsProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}

class DetailReelsProperties {
  final IsComparisonClass id;
  final ContactNameClass title;
  final IsComparisonClass content;
  final Dealer dealer;
  final Dealer user;
  final Year likeCount;
  final Year shareCount;
  final Dealer announcement;
  final IsComparisonClass? isLiked;
  final BodyType? isOfferOfTheDay;

  DetailReelsProperties({
    required this.id,
    required this.title,
    required this.content,
    required this.dealer,
    required this.user,
    required this.likeCount,
    required this.shareCount,
    required this.announcement,
    this.isLiked,
    this.isOfferOfTheDay,
  });

  factory DetailReelsProperties.fromJson(Map<String, dynamic> json) => DetailReelsProperties(
        id: IsComparisonClass.fromJson(json['id']),
        title: ContactNameClass.fromJson(json['title']),
        content: IsComparisonClass.fromJson(json['content']),
        dealer: Dealer.fromJson(json['dealer']),
        user: Dealer.fromJson(json['user']),
        likeCount: Year.fromJson(json['like_count']),
        shareCount: Year.fromJson(json['share_count']),
        announcement: Dealer.fromJson(json['announcement']),
        isLiked: json['is_liked'] == null ? null : IsComparisonClass.fromJson(json['is_liked']),
        isOfferOfTheDay: json['is_offer_of_the_day'] == null ? null : BodyType.fromJson(json['is_offer_of_the_day']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'title': title.toJson(),
        'content': content.toJson(),
        'dealer': dealer.toJson(),
        'user': user.toJson(),
        'like_count': likeCount.toJson(),
        'share_count': shareCount.toJson(),
        'announcement': announcement.toJson(),
        'is_liked': isLiked?.toJson(),
        'is_offer_of_the_day': isOfferOfTheDay?.toJson(),
      };
}

class DistrictRegion {
  final List<String> required;
  final String type;
  final DistrictRegionProperties properties;

  DistrictRegion({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory DistrictRegion.fromJson(Map<String, dynamic> json) => DistrictRegion(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: DistrictRegionProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}

class DistrictRegionProperties {
  final IsComparisonClass id;
  final ContactNameClass title;
  final Dealer region;

  DistrictRegionProperties({
    required this.id,
    required this.title,
    required this.region,
  });

  factory DistrictRegionProperties.fromJson(Map<String, dynamic> json) => DistrictRegionProperties(
        id: IsComparisonClass.fromJson(json['id']),
        title: ContactNameClass.fromJson(json['title']),
        region: Dealer.fromJson(json['region']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'title': title.toJson(),
        'region': region.toJson(),
      };
}

class Equipment {
  final List<String> required;
  final String type;
  final EquipmentProperties properties;

  Equipment({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory Equipment.fromJson(Map<String, dynamic> json) => Equipment(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: EquipmentProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
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

class Generation {
  final List<String> required;
  final String type;
  final GenerationProperties properties;

  Generation({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory Generation.fromJson(Map<String, dynamic> json) => Generation(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: GenerationProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}

class GenerationProperties {
  final IsComparisonClass id;
  final ContactNameClass name;
  final Year yearBegin;
  final Year yearEnd;
  final IsComparisonClass logo;

  GenerationProperties({
    required this.id,
    required this.name,
    required this.yearBegin,
    required this.yearEnd,
    required this.logo,
  });

  factory GenerationProperties.fromJson(Map<String, dynamic> json) => GenerationProperties(
        id: IsComparisonClass.fromJson(json['id']),
        name: ContactNameClass.fromJson(json['name']),
        yearBegin: Year.fromJson(json['year_begin']),
        yearEnd: Year.fromJson(json['year_end']),
        logo: IsComparisonClass.fromJson(json['logo']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'name': name.toJson(),
        'year_begin': yearBegin.toJson(),
        'year_end': yearEnd.toJson(),
        'logo': logo.toJson(),
      };
}

class GetLastTransactionStatus {
  final List<String> required;
  final String type;
  final GetLastTransactionStatusProperties properties;

  GetLastTransactionStatus({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory GetLastTransactionStatus.fromJson(Map<String, dynamic> json) => GetLastTransactionStatus(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: GetLastTransactionStatusProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}

class GetLastTransactionStatusProperties {
  final IsComparisonClass id;
  final Currency status;

  GetLastTransactionStatusProperties({
    required this.id,
    required this.status,
  });

  factory GetLastTransactionStatusProperties.fromJson(Map<String, dynamic> json) => GetLastTransactionStatusProperties(
        id: IsComparisonClass.fromJson(json['id']),
        status: Currency.fromJson(json['status']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'status': status.toJson(),
      };
}

class HomeAvtouzWebAutoBackendSrcEsAnnouncementsSerializersPyAnnouncementSerializer {
  final List<String> required;
  final String type;
  final HomeAvtouzWebAutoBackendSrcEsAnnouncementsSerializersPyAnnouncementSerializerProperties properties;

  HomeAvtouzWebAutoBackendSrcEsAnnouncementsSerializersPyAnnouncementSerializer({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory HomeAvtouzWebAutoBackendSrcEsAnnouncementsSerializersPyAnnouncementSerializer.fromJson(
          Map<String, dynamic> json) =>
      HomeAvtouzWebAutoBackendSrcEsAnnouncementsSerializersPyAnnouncementSerializer(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: HomeAvtouzWebAutoBackendSrcEsAnnouncementsSerializersPyAnnouncementSerializerProperties.fromJson(
            json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}

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

class Image {
  final String type;
  final DefaultClass properties;

  Image({
    required this.type,
    required this.properties,
  });

  factory Image.fromJson(Map<String, dynamic> json) => Image(
        type: json['type'],
        properties: DefaultClass.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'type': type,
        'properties': properties.toJson(),
      };
}

class DefaultClass {
  DefaultClass();

  factory DefaultClass.fromJson(Map<String, dynamic> json) => DefaultClass();

  Map<String, dynamic> toJson() => {};
}

class EReels {
  final List<String> required;
  final String type;
  final LikeReelsProperties properties;

  EReels({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory EReels.fromJson(Map<String, dynamic> json) => EReels(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: LikeReelsProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}

class LikeReelsProperties {
  final IsComparisonClass id;
  final BodyType reel;

  LikeReelsProperties({
    required this.id,
    required this.reel,
  });

  factory LikeReelsProperties.fromJson(Map<String, dynamic> json) => LikeReelsProperties(
        id: IsComparisonClass.fromJson(json['id']),
        reel: BodyType.fromJson(json['reel']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'reel': reel.toJson(),
      };
}

class ListStories {
  final List<String> required;
  final String type;
  final ListStoriesProperties properties;

  ListStories({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory ListStories.fromJson(Map<String, dynamic> json) => ListStories(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: ListStoriesProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}

class ListStoriesProperties {
  final IsComparisonClass id;
  final ContactNameClass title;
  final EquipmentClass description;
  final IsComparisonClass content;
  final IsComparisonClass icon;
  final EquipmentClass url;
  final BodyType expired;
  final Currency redirectTo;
  final EquipmentClass redirectData;
  final IsComparisonClass isRead;

  ListStoriesProperties({
    required this.id,
    required this.title,
    required this.description,
    required this.content,
    required this.icon,
    required this.url,
    required this.expired,
    required this.redirectTo,
    required this.redirectData,
    required this.isRead,
  });

  factory ListStoriesProperties.fromJson(Map<String, dynamic> json) => ListStoriesProperties(
        id: IsComparisonClass.fromJson(json['id']),
        title: ContactNameClass.fromJson(json['title']),
        description: EquipmentClass.fromJson(json['description']),
        content: IsComparisonClass.fromJson(json['content']),
        icon: IsComparisonClass.fromJson(json['icon']),
        url: EquipmentClass.fromJson(json['url']),
        expired: BodyType.fromJson(json['expired']),
        redirectTo: Currency.fromJson(json['redirect_to']),
        redirectData: EquipmentClass.fromJson(json['redirect_data']),
        isRead: IsComparisonClass.fromJson(json['is_read']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'title': title.toJson(),
        'description': description.toJson(),
        'content': content.toJson(),
        'icon': icon.toJson(),
        'url': url.toJson(),
        'expired': expired.toJson(),
        'redirect_to': redirectTo.toJson(),
        'redirect_data': redirectData.toJson(),
        'is_read': isRead.toJson(),
      };
}

class Make {
  final List<String> required;
  final String type;
  final MakeProperties properties;

  Make({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory Make.fromJson(Map<String, dynamic> json) => Make(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: MakeProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}

class MakeProperties {
  final IsComparisonClass id;
  final ContactNameClass name;
  final Slug slug;
  final IsComparisonClass logo;

  MakeProperties({
    required this.id,
    required this.name,
    required this.slug,
    required this.logo,
  });

  factory MakeProperties.fromJson(Map<String, dynamic> json) => MakeProperties(
        id: IsComparisonClass.fromJson(json['id']),
        name: ContactNameClass.fromJson(json['name']),
        slug: Slug.fromJson(json['slug']),
        logo: IsComparisonClass.fromJson(json['logo']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'name': name.toJson(),
        'slug': slug.toJson(),
        'logo': logo.toJson(),
      };
}

class MapScreenshot {
  final List<String> required;
  final String type;
  final MapScreenshotProperties properties;

  MapScreenshot({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory MapScreenshot.fromJson(Map<String, dynamic> json) => MapScreenshot(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: MapScreenshotProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}

class MapScreenshotProperties {
  final ContactNameClass longitude;
  final ContactNameClass latitude;

  MapScreenshotProperties({
    required this.longitude,
    required this.latitude,
  });

  factory MapScreenshotProperties.fromJson(Map<String, dynamic> json) => MapScreenshotProperties(
        longitude: ContactNameClass.fromJson(json['longitude']),
        latitude: ContactNameClass.fromJson(json['latitude']),
      );

  Map<String, dynamic> toJson() => {
        'longitude': longitude.toJson(),
        'latitude': latitude.toJson(),
      };
}

class ModificationType {
  final List<String> required;
  final String type;
  final ModificationTypeProperties properties;

  ModificationType({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory ModificationType.fromJson(Map<String, dynamic> json) => ModificationType(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: ModificationTypeProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}

class ModificationTypeProperties {
  final IsComparisonClass id;
  final ContactNameClass power;
  final ContactNameClass volume;

  ModificationTypeProperties({
    required this.id,
    required this.power,
    required this.volume,
  });

  factory ModificationTypeProperties.fromJson(Map<String, dynamic> json) => ModificationTypeProperties(
        id: IsComparisonClass.fromJson(json['id']),
        power: ContactNameClass.fromJson(json['power']),
        volume: ContactNameClass.fromJson(json['volume']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'power': power.toJson(),
        'volume': volume.toJson(),
      };
}

class MyAnnouncement {
  final List<String> required;
  final String type;
  final MyAnnouncementProperties properties;

  MyAnnouncement({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory MyAnnouncement.fromJson(Map<String, dynamic> json) => MyAnnouncement(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: MyAnnouncementProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}

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

class OptionClass {
  final List<String> required;
  final String type;
  final OptionProperties properties;

  OptionClass({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory OptionClass.fromJson(Map<String, dynamic> json) => OptionClass(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: OptionProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}

class OptionProperties {
  final IsComparisonClass id;
  final ContactNameClass name;
  final Dealer category;
  final Currency type;
  final RentWithPurchaseClass? items;

  OptionProperties({
    required this.id,
    required this.name,
    required this.category,
    required this.type,
    this.items,
  });

  factory OptionProperties.fromJson(Map<String, dynamic> json) => OptionProperties(
        id: IsComparisonClass.fromJson(json['id']),
        name: ContactNameClass.fromJson(json['name']),
        category: Dealer.fromJson(json['category']),
        type: Currency.fromJson(json['type']),
        items: json['items'] == null ? null : RentWithPurchaseClass.fromJson(json['items']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'name': name.toJson(),
        'category': category.toJson(),
        'type': type.toJson(),
        'items': items?.toJson(),
      };
}

class Payme {
  final List<String> required;
  final String type;
  final PaymeProperties properties;

  Payme({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory Payme.fromJson(Map<String, dynamic> json) => Payme(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: PaymeProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}

class PaymeProperties {
  final BodyType id;
  final Currency method;
  final BodyType params;

  PaymeProperties({
    required this.id,
    required this.method,
    required this.params,
  });

  factory PaymeProperties.fromJson(Map<String, dynamic> json) => PaymeProperties(
        id: BodyType.fromJson(json['id']),
        method: Currency.fromJson(json['method']),
        params: BodyType.fromJson(json['params']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'method': method.toJson(),
        'params': params.toJson(),
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

class Product {
  final List<String> required;
  final String type;
  final ProductProperties properties;

  Product({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: ProductProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}

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

class ProductCategory {
  final List<String> required;
  final String type;
  final ProductCategoryProperties properties;

  ProductCategory({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory ProductCategory.fromJson(Map<String, dynamic> json) => ProductCategory(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: ProductCategoryProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}

class ProductCategoryProperties {
  final IsComparisonClass id;
  final ContactNameClass name;
  final IsComparisonClass productsCount;

  ProductCategoryProperties({
    required this.id,
    required this.name,
    required this.productsCount,
  });

  factory ProductCategoryProperties.fromJson(Map<String, dynamic> json) => ProductCategoryProperties(
        id: IsComparisonClass.fromJson(json['id']),
        name: ContactNameClass.fromJson(json['name']),
        productsCount: IsComparisonClass.fromJson(json['products_count']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'name': name.toJson(),
        'products_count': productsCount.toJson(),
      };
}

class ProjectSocialAuths {
  final List<String> required;
  final String type;
  final ProjectSocialAuthsProperties properties;

  ProjectSocialAuths({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory ProjectSocialAuths.fromJson(Map<String, dynamic> json) => ProjectSocialAuths(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: ProjectSocialAuthsProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}

class ProjectSocialAuthsProperties {
  final IsComparisonClass id;
  final Dealer usedSocialAuth;
  final BodyType isAvailable;

  ProjectSocialAuthsProperties({
    required this.id,
    required this.usedSocialAuth,
    required this.isAvailable,
  });

  factory ProjectSocialAuthsProperties.fromJson(Map<String, dynamic> json) => ProjectSocialAuthsProperties(
        id: IsComparisonClass.fromJson(json['id']),
        usedSocialAuth: Dealer.fromJson(json['used_social_auth']),
        isAvailable: BodyType.fromJson(json['is_available']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'used_social_auth': usedSocialAuth.toJson(),
        'is_available': isAvailable.toJson(),
      };
}

class Region {
  final List<String> required;
  final String type;
  final RegionProperties properties;

  Region({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory Region.fromJson(Map<String, dynamic> json) => Region(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: RegionProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}

class RegionProperties {
  final IsComparisonClass id;
  final ContactNameClass title;
  final ContactNameClass soato;

  RegionProperties({
    required this.id,
    required this.title,
    required this.soato,
  });

  factory RegionProperties.fromJson(Map<String, dynamic> json) => RegionProperties(
        id: IsComparisonClass.fromJson(json['id']),
        title: ContactNameClass.fromJson(json['title']),
        soato: ContactNameClass.fromJson(json['soato']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'title': title.toJson(),
        'soato': soato.toJson(),
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

class Rent {
  final List<String> required;
  final String type;
  final RentProperties properties;

  Rent({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory Rent.fromJson(Map<String, dynamic> json) => Rent(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: RentProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}

class RentProperties {
  final IsComparisonClass id;
  final Dealer rentCar;
  final Dealer region;
  final Price price;
  final Year minAge;
  final Year minDrivingExperience;

  RentProperties({
    required this.id,
    required this.rentCar,
    required this.region,
    required this.price,
    required this.minAge,
    required this.minDrivingExperience,
  });

  factory RentProperties.fromJson(Map<String, dynamic> json) => RentProperties(
        id: IsComparisonClass.fromJson(json['id']),
        rentCar: Dealer.fromJson(json['rent_car']),
        region: Dealer.fromJson(json['region']),
        price: Price.fromJson(json['price']),
        minAge: Year.fromJson(json['min_age']),
        minDrivingExperience: Year.fromJson(json['min_driving_experience']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'rent_car': rentCar.toJson(),
        'region': region.toJson(),
        'price': price.toJson(),
        'min_age': minAge.toJson(),
        'min_driving_experience': minDrivingExperience.toJson(),
      };
}

class RentCar {
  final List<String> required;
  final String type;
  final RentCarProperties properties;

  RentCar({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory RentCar.fromJson(Map<String, dynamic> json) => RentCar(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: RentCarProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}

class RentCarProperties {
  final IsComparisonClass id;
  final Dealer type;
  final Dealer category;
  final Dealer make;
  final Dealer model;
  final Dealer generation;
  final Dealer bodyType;
  final Year year;
  final Dealer driveType;
  final Dealer modificationType;
  final Dealer gearboxType;
  final Dealer engineType;
  final BodyType engineVolume;
  final ContactNameClass color;
  final Year distanceTraveled;
  final BodyType hasAirConditioner;
  final BodyType hasBabySeat;
  final BodyType isClean;
  final BodyType isFullFuel;
  final RentWithPurchaseClass gallery;

  RentCarProperties({
    required this.id,
    required this.type,
    required this.category,
    required this.make,
    required this.model,
    required this.generation,
    required this.bodyType,
    required this.year,
    required this.driveType,
    required this.modificationType,
    required this.gearboxType,
    required this.engineType,
    required this.engineVolume,
    required this.color,
    required this.distanceTraveled,
    required this.hasAirConditioner,
    required this.hasBabySeat,
    required this.isClean,
    required this.isFullFuel,
    required this.gallery,
  });

  factory RentCarProperties.fromJson(Map<String, dynamic> json) => RentCarProperties(
        id: IsComparisonClass.fromJson(json['id']),
        type: Dealer.fromJson(json['type']),
        category: Dealer.fromJson(json['category']),
        make: Dealer.fromJson(json['make']),
        model: Dealer.fromJson(json['model']),
        generation: Dealer.fromJson(json['generation']),
        bodyType: Dealer.fromJson(json['body_type']),
        year: Year.fromJson(json['year']),
        driveType: Dealer.fromJson(json['drive_type']),
        modificationType: Dealer.fromJson(json['modification_type']),
        gearboxType: Dealer.fromJson(json['gearbox_type']),
        engineType: Dealer.fromJson(json['engine_type']),
        engineVolume: BodyType.fromJson(json['engine_volume']),
        color: ContactNameClass.fromJson(json['color']),
        distanceTraveled: Year.fromJson(json['distance_traveled']),
        hasAirConditioner: BodyType.fromJson(json['has_air_conditioner']),
        hasBabySeat: BodyType.fromJson(json['has_baby_seat']),
        isClean: BodyType.fromJson(json['is_clean']),
        isFullFuel: BodyType.fromJson(json['is_full_fuel']),
        gallery: RentWithPurchaseClass.fromJson(json['gallery']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'type': type.toJson(),
        'category': category.toJson(),
        'make': make.toJson(),
        'model': model.toJson(),
        'generation': generation.toJson(),
        'body_type': bodyType.toJson(),
        'year': year.toJson(),
        'drive_type': driveType.toJson(),
        'modification_type': modificationType.toJson(),
        'gearbox_type': gearboxType.toJson(),
        'engine_type': engineType.toJson(),
        'engine_volume': engineVolume.toJson(),
        'color': color.toJson(),
        'distance_traveled': distanceTraveled.toJson(),
        'has_air_conditioner': hasAirConditioner.toJson(),
        'has_baby_seat': hasBabySeat.toJson(),
        'is_clean': isClean.toJson(),
        'is_full_fuel': isFullFuel.toJson(),
        'gallery': gallery.toJson(),
      };
}

class RentCarMainPage {
  final List<String> required;
  final String type;
  final RentCarMainPageProperties properties;

  RentCarMainPage({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory RentCarMainPage.fromJson(Map<String, dynamic> json) => RentCarMainPage(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: RentCarMainPageProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}

class RentCarMainPageProperties {
  final IsComparisonClass id;
  final ContactNameClass name;
  final IsComparisonClass rentList;

  RentCarMainPageProperties({
    required this.id,
    required this.name,
    required this.rentList,
  });

  factory RentCarMainPageProperties.fromJson(Map<String, dynamic> json) => RentCarMainPageProperties(
        id: IsComparisonClass.fromJson(json['id']),
        name: ContactNameClass.fromJson(json['name']),
        rentList: IsComparisonClass.fromJson(json['rent_list']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'name': name.toJson(),
        'rent_list': rentList.toJson(),
      };
}

class RentOrder {
  final List<String> required;
  final String type;
  final RentOrderGetProperties properties;

  RentOrder({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory RentOrder.fromJson(Map<String, dynamic> json) => RentOrder(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: RentOrderGetProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}

class RentOrderGetProperties {
  final IsComparisonClass id;
  final BodyType? user;
  final BodyType rent;
  final ContactNameClass userName;
  final ContactNameClass phoneNumber;
  final Price startDate;
  final Price endDate;
  final EquipmentClass startLongitude;
  final EquipmentClass startLatitude;
  final EquipmentClass endLongitude;
  final EquipmentClass endLatitude;
  final AdditionalServices additionalServices;
  final IsComparisonClass? totalPrice;
  final BodyType? isActive;

  RentOrderGetProperties({
    required this.id,
    this.user,
    required this.rent,
    required this.userName,
    required this.phoneNumber,
    required this.startDate,
    required this.endDate,
    required this.startLongitude,
    required this.startLatitude,
    required this.endLongitude,
    required this.endLatitude,
    required this.additionalServices,
    this.totalPrice,
    this.isActive,
  });

  factory RentOrderGetProperties.fromJson(Map<String, dynamic> json) => RentOrderGetProperties(
        id: IsComparisonClass.fromJson(json['id']),
        user: json['user'] == null ? null : BodyType.fromJson(json['user']),
        rent: BodyType.fromJson(json['rent']),
        userName: ContactNameClass.fromJson(json['user_name']),
        phoneNumber: ContactNameClass.fromJson(json['phone_number']),
        startDate: Price.fromJson(json['start_date']),
        endDate: Price.fromJson(json['end_date']),
        startLongitude: EquipmentClass.fromJson(json['start_longitude']),
        startLatitude: EquipmentClass.fromJson(json['start_latitude']),
        endLongitude: EquipmentClass.fromJson(json['end_longitude']),
        endLatitude: EquipmentClass.fromJson(json['end_latitude']),
        additionalServices: AdditionalServices.fromJson(json['additional_services']),
        totalPrice: json['total_price'] == null ? null : IsComparisonClass.fromJson(json['total_price']),
        isActive: json['is_active'] == null ? null : BodyType.fromJson(json['is_active']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'user': user?.toJson(),
        'rent': rent.toJson(),
        'user_name': userName.toJson(),
        'phone_number': phoneNumber.toJson(),
        'start_date': startDate.toJson(),
        'end_date': endDate.toJson(),
        'start_longitude': startLongitude.toJson(),
        'start_latitude': startLatitude.toJson(),
        'end_longitude': endLongitude.toJson(),
        'end_latitude': endLatitude.toJson(),
        'additional_services': additionalServices.toJson(),
        'total_price': totalPrice?.toJson(),
        'is_active': isActive?.toJson(),
      };
}

class AdditionalServices {
  final String type;
  final BodyType items;
  final bool uniqueItems;

  AdditionalServices({
    required this.type,
    required this.items,
    required this.uniqueItems,
  });

  factory AdditionalServices.fromJson(Map<String, dynamic> json) => AdditionalServices(
        type: json['type'],
        items: BodyType.fromJson(json['items']),
        uniqueItems: json['uniqueItems'],
      );

  Map<String, dynamic> toJson() => {
        'type': type,
        'items': items.toJson(),
        'uniqueItems': uniqueItems,
      };
}

class DefinitionsRentWithPurchase {
  final String type;
  final PurpleProperties properties;
  final DefaultClass rentWithPurchaseDefault;

  DefinitionsRentWithPurchase({
    required this.type,
    required this.properties,
    required this.rentWithPurchaseDefault,
  });

  factory DefinitionsRentWithPurchase.fromJson(Map<String, dynamic> json) => DefinitionsRentWithPurchase(
        type: json['type'],
        properties: PurpleProperties.fromJson(json['properties']),
        rentWithPurchaseDefault: DefaultClass.fromJson(json['default']),
      );

  Map<String, dynamic> toJson() => {
        'type': type,
        'properties': properties.toJson(),
        'default': rentWithPurchaseDefault.toJson(),
      };
}

class PurpleProperties {
  final IsComparisonClass id;
  final Price prepayment;
  final Year rentalPeriod;
  final Price monthlyPayment;

  PurpleProperties({
    required this.id,
    required this.prepayment,
    required this.rentalPeriod,
    required this.monthlyPayment,
  });

  factory PurpleProperties.fromJson(Map<String, dynamic> json) => PurpleProperties(
        id: IsComparisonClass.fromJson(json['id']),
        prepayment: Price.fromJson(json['prepayment']),
        rentalPeriod: Year.fromJson(json['rental_period']),
        monthlyPayment: Price.fromJson(json['monthly_payment']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'prepayment': prepayment.toJson(),
        'rental_period': rentalPeriod.toJson(),
        'monthly_payment': monthlyPayment.toJson(),
      };
}

class SendVerificationCode {
  final List<String> required;
  final String type;
  final SendVerificationCodeProperties properties;

  SendVerificationCode({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory SendVerificationCode.fromJson(Map<String, dynamic> json) => SendVerificationCode(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: SendVerificationCodeProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}

class SendVerificationCodeProperties {
  final ContactNameClass phone;

  SendVerificationCodeProperties({
    required this.phone,
  });

  factory SendVerificationCodeProperties.fromJson(Map<String, dynamic> json) => SendVerificationCodeProperties(
        phone: ContactNameClass.fromJson(json['phone']),
      );

  Map<String, dynamic> toJson() => {
        'phone': phone.toJson(),
      };
}

class SendVerificationCodeFor {
  final List<String> required;
  final String type;
  final SendVerificationCodeForAnnouncementProperties properties;

  SendVerificationCodeFor({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory SendVerificationCodeFor.fromJson(Map<String, dynamic> json) => SendVerificationCodeFor(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: SendVerificationCodeForAnnouncementProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}

class SendVerificationCodeForAnnouncementProperties {
  final ContactNameClass phoneNumber;

  SendVerificationCodeForAnnouncementProperties({
    required this.phoneNumber,
  });

  factory SendVerificationCodeForAnnouncementProperties.fromJson(Map<String, dynamic> json) =>
      SendVerificationCodeForAnnouncementProperties(
        phoneNumber: ContactNameClass.fromJson(json['phone_number']),
      );

  Map<String, dynamic> toJson() => {
        'phone_number': phoneNumber.toJson(),
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

class StaticPage {
  final List<String> required;
  final String type;
  final StaticPageProperties properties;

  StaticPage({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory StaticPage.fromJson(Map<String, dynamic> json) => StaticPage(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: StaticPageProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}

class StaticPageProperties {
  final IsComparisonClass id;
  final ContactNameClass title;
  final ContactNameClass slug;
  final ContactNameClass link;
  final ContactNameClass content;

  StaticPageProperties({
    required this.id,
    required this.title,
    required this.slug,
    required this.link,
    required this.content,
  });

  factory StaticPageProperties.fromJson(Map<String, dynamic> json) => StaticPageProperties(
        id: IsComparisonClass.fromJson(json['id']),
        title: ContactNameClass.fromJson(json['title']),
        slug: ContactNameClass.fromJson(json['slug']),
        link: ContactNameClass.fromJson(json['link']),
        content: ContactNameClass.fromJson(json['content']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'title': title.toJson(),
        'slug': slug.toJson(),
        'link': link.toJson(),
        'content': content.toJson(),
      };
}

class Tariff {
  final List<String> required;
  final String type;
  final TariffProperties properties;

  Tariff({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory Tariff.fromJson(Map<String, dynamic> json) => Tariff(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: TariffProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}

class TariffProperties {
  final IsComparisonClass id;
  final Currency type;
  final Price amount;
  final IsComparisonClass typeInt;

  TariffProperties({
    required this.id,
    required this.type,
    required this.amount,
    required this.typeInt,
  });

  factory TariffProperties.fromJson(Map<String, dynamic> json) => TariffProperties(
        id: IsComparisonClass.fromJson(json['id']),
        type: Currency.fromJson(json['type']),
        amount: Price.fromJson(json['amount']),
        typeInt: IsComparisonClass.fromJson(json['type_int']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'type': type.toJson(),
        'amount': amount.toJson(),
        'type_int': typeInt.toJson(),
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

class UserChangePhone {
  final List<String> required;
  final String type;
  final UserChangePhoneProperties properties;

  UserChangePhone({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory UserChangePhone.fromJson(Map<String, dynamic> json) => UserChangePhone(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: UserChangePhoneProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}

class UserChangePhoneProperties {
  final ContactNameClass phoneNumber;
  final ContactNameClass code;
  final ContactNameClass session;

  UserChangePhoneProperties({
    required this.phoneNumber,
    required this.code,
    required this.session,
  });

  factory UserChangePhoneProperties.fromJson(Map<String, dynamic> json) => UserChangePhoneProperties(
        phoneNumber: ContactNameClass.fromJson(json['phone_number']),
        code: ContactNameClass.fromJson(json['code']),
        session: ContactNameClass.fromJson(json['session']),
      );

  Map<String, dynamic> toJson() => {
        'phone_number': phoneNumber.toJson(),
        'code': code.toJson(),
        'session': session.toJson(),
      };
}

class UserComparisonCreateList {
  final List<String> required;
  final String type;
  final UserComparisonCreateListProperties properties;

  UserComparisonCreateList({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory UserComparisonCreateList.fromJson(Map<String, dynamic> json) => UserComparisonCreateList(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: UserComparisonCreateListProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}

class UserComparisonCreateListProperties {
  final IsComparisonClass id;
  final BodyType announcement;
  final Year order;

  UserComparisonCreateListProperties({
    required this.id,
    required this.announcement,
    required this.order,
  });

  factory UserComparisonCreateListProperties.fromJson(Map<String, dynamic> json) => UserComparisonCreateListProperties(
        id: IsComparisonClass.fromJson(json['id']),
        announcement: BodyType.fromJson(json['announcement']),
        order: Year.fromJson(json['order']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'announcement': announcement.toJson(),
        'order': order.toJson(),
      };
}

class UserCountData {
  final List<String> required;
  final String type;
  final UserCountDataProperties properties;

  UserCountData({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory UserCountData.fromJson(Map<String, dynamic> json) => UserCountData(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: UserCountDataProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}

class UserCountDataProperties {
  final IsComparisonClass id;
  final BodyType user;
  final Year announcementWishlistCount;
  final Year announcementsCount;
  final Year searchCount;
  final Year reviewsCount;
  final Year filterHistoryCount;

  UserCountDataProperties({
    required this.id,
    required this.user,
    required this.announcementWishlistCount,
    required this.announcementsCount,
    required this.searchCount,
    required this.reviewsCount,
    required this.filterHistoryCount,
  });

  factory UserCountDataProperties.fromJson(Map<String, dynamic> json) => UserCountDataProperties(
        id: IsComparisonClass.fromJson(json['id']),
        user: BodyType.fromJson(json['user']),
        announcementWishlistCount: Year.fromJson(json['announcement_wishlist_count']),
        announcementsCount: Year.fromJson(json['announcements_count']),
        searchCount: Year.fromJson(json['search_count']),
        reviewsCount: Year.fromJson(json['reviews_count']),
        filterHistoryCount: Year.fromJson(json['filter_history_count']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'user': user.toJson(),
        'announcement_wishlist_count': announcementWishlistCount.toJson(),
        'announcements_count': announcementsCount.toJson(),
        'search_count': searchCount.toJson(),
        'reviews_count': reviewsCount.toJson(),
        'filter_history_count': filterHistoryCount.toJson(),
      };
}

class UserDetail {
  final String type;
  final UserDetailProperties properties;

  UserDetail({
    required this.type,
    required this.properties,
  });

  factory UserDetail.fromJson(Map<String, dynamic> json) => UserDetail(
        type: json['type'],
        properties: UserDetailProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'type': type,
        'properties': properties.toJson(),
      };
}

class UserDetailProperties {
  final IsComparisonClass id;
  final IsComparisonClass username;
  final ContactNameClass firstName;
  final ContactNameClass lastName;
  final ContactNameClass fullName;
  final EquipmentClass email;
  final IsComparisonClass image;
  final EquipmentClass region;
  final EquipmentClass phoneNumber;
  final BodyType isDealer;
  final Is isActive;
  final Is isStaff;
  final Is isSuperuser;
  final EquipmentClass lastLogin;
  final Price dateJoined;
  final IsComparisonClass isReadAllNotifications;

  UserDetailProperties({
    required this.id,
    required this.username,
    required this.firstName,
    required this.lastName,
    required this.fullName,
    required this.email,
    required this.image,
    required this.region,
    required this.phoneNumber,
    required this.isDealer,
    required this.isActive,
    required this.isStaff,
    required this.isSuperuser,
    required this.lastLogin,
    required this.dateJoined,
    required this.isReadAllNotifications,
  });

  factory UserDetailProperties.fromJson(Map<String, dynamic> json) => UserDetailProperties(
        id: IsComparisonClass.fromJson(json['id']),
        username: IsComparisonClass.fromJson(json['username']),
        firstName: ContactNameClass.fromJson(json['first_name']),
        lastName: ContactNameClass.fromJson(json['last_name']),
        fullName: ContactNameClass.fromJson(json['full_name']),
        email: EquipmentClass.fromJson(json['email']),
        image: IsComparisonClass.fromJson(json['image']),
        region: EquipmentClass.fromJson(json['region']),
        phoneNumber: EquipmentClass.fromJson(json['phone_number']),
        isDealer: BodyType.fromJson(json['is_dealer']),
        isActive: Is.fromJson(json['is_active']),
        isStaff: Is.fromJson(json['is_staff']),
        isSuperuser: Is.fromJson(json['is_superuser']),
        lastLogin: EquipmentClass.fromJson(json['last_login']),
        dateJoined: Price.fromJson(json['date_joined']),
        isReadAllNotifications: IsComparisonClass.fromJson(json['is_read_all_notifications']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'username': username.toJson(),
        'first_name': firstName.toJson(),
        'last_name': lastName.toJson(),
        'full_name': fullName.toJson(),
        'email': email.toJson(),
        'image': image.toJson(),
        'region': region.toJson(),
        'phone_number': phoneNumber.toJson(),
        'is_dealer': isDealer.toJson(),
        'is_active': isActive.toJson(),
        'is_staff': isStaff.toJson(),
        'is_superuser': isSuperuser.toJson(),
        'last_login': lastLogin.toJson(),
        'date_joined': dateJoined.toJson(),
        'is_read_all_notifications': isReadAllNotifications.toJson(),
      };
}

class Is {
  final String title;
  final String description;
  final String type;

  Is({
    required this.title,
    required this.description,
    required this.type,
  });

  factory Is.fromJson(Map<String, dynamic> json) => Is(
        title: json['title'],
        description: json['description'],
        type: json['type'],
      );

  Map<String, dynamic> toJson() => {
        'title': title,
        'description': description,
        'type': type,
      };
}

class UserDetailEdit {
  final String type;
  final UserDetailEditProperties properties;

  UserDetailEdit({
    required this.type,
    required this.properties,
  });

  factory UserDetailEdit.fromJson(Map<String, dynamic> json) => UserDetailEdit(
        type: json['type'],
        properties: UserDetailEditProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'type': type,
        'properties': properties.toJson(),
      };
}

class UserDetailEditProperties {
  final ContactNameClass fullName;
  final IsComparisonClass image;
  final EquipmentClass region;
  final EquipmentClass email;

  UserDetailEditProperties({
    required this.fullName,
    required this.image,
    required this.region,
    required this.email,
  });

  factory UserDetailEditProperties.fromJson(Map<String, dynamic> json) => UserDetailEditProperties(
        fullName: ContactNameClass.fromJson(json['full_name']),
        image: IsComparisonClass.fromJson(json['image']),
        region: EquipmentClass.fromJson(json['region']),
        email: EquipmentClass.fromJson(json['email']),
      );

  Map<String, dynamic> toJson() => {
        'full_name': fullName.toJson(),
        'image': image.toJson(),
        'region': region.toJson(),
        'email': email.toJson(),
      };
}

class UserDetailWithCounts {
  final List<String> required;
  final String type;
  final UserDetailWithCountsProperties properties;

  UserDetailWithCounts({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory UserDetailWithCounts.fromJson(Map<String, dynamic> json) => UserDetailWithCounts(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: UserDetailWithCountsProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}

class UserDetailWithCountsProperties {
  final IsComparisonClass id;
  final IsComparisonClass username;
  final ContactNameClass firstName;
  final ContactNameClass lastName;
  final ContactNameClass fullName;
  final EquipmentClass email;
  final IsComparisonClass image;
  final Dealer region;
  final EquipmentClass phoneNumber;
  final BodyType isDealer;
  final Is isActive;
  final Is isStaff;
  final Is isSuperuser;
  final EquipmentClass lastLogin;
  final Price dateJoined;
  final Dealer usercountdata;
  final IsComparisonClass isReadAllNotifications;

  UserDetailWithCountsProperties({
    required this.id,
    required this.username,
    required this.firstName,
    required this.lastName,
    required this.fullName,
    required this.email,
    required this.image,
    required this.region,
    required this.phoneNumber,
    required this.isDealer,
    required this.isActive,
    required this.isStaff,
    required this.isSuperuser,
    required this.lastLogin,
    required this.dateJoined,
    required this.usercountdata,
    required this.isReadAllNotifications,
  });

  factory UserDetailWithCountsProperties.fromJson(Map<String, dynamic> json) => UserDetailWithCountsProperties(
        id: IsComparisonClass.fromJson(json['id']),
        username: IsComparisonClass.fromJson(json['username']),
        firstName: ContactNameClass.fromJson(json['first_name']),
        lastName: ContactNameClass.fromJson(json['last_name']),
        fullName: ContactNameClass.fromJson(json['full_name']),
        email: EquipmentClass.fromJson(json['email']),
        image: IsComparisonClass.fromJson(json['image']),
        region: Dealer.fromJson(json['region']),
        phoneNumber: EquipmentClass.fromJson(json['phone_number']),
        isDealer: BodyType.fromJson(json['is_dealer']),
        isActive: Is.fromJson(json['is_active']),
        isStaff: Is.fromJson(json['is_staff']),
        isSuperuser: Is.fromJson(json['is_superuser']),
        lastLogin: EquipmentClass.fromJson(json['last_login']),
        dateJoined: Price.fromJson(json['date_joined']),
        usercountdata: Dealer.fromJson(json['usercountdata']),
        isReadAllNotifications: IsComparisonClass.fromJson(json['is_read_all_notifications']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'username': username.toJson(),
        'first_name': firstName.toJson(),
        'last_name': lastName.toJson(),
        'full_name': fullName.toJson(),
        'email': email.toJson(),
        'image': image.toJson(),
        'region': region.toJson(),
        'phone_number': phoneNumber.toJson(),
        'is_dealer': isDealer.toJson(),
        'is_active': isActive.toJson(),
        'is_staff': isStaff.toJson(),
        'is_superuser': isSuperuser.toJson(),
        'last_login': lastLogin.toJson(),
        'date_joined': dateJoined.toJson(),
        'usercountdata': usercountdata.toJson(),
        'is_read_all_notifications': isReadAllNotifications.toJson(),
      };
}

class UserFilterHistoryCreate {
  final List<String> required;
  final String type;
  final UserFilterHistoryCreateProperties properties;

  UserFilterHistoryCreate({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory UserFilterHistoryCreate.fromJson(Map<String, dynamic> json) => UserFilterHistoryCreate(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: UserFilterHistoryCreateProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}

class UserFilterHistoryCreateProperties {
  final EquipmentClass id;
  final BodyType make;
  final AdditionalServices model;
  final ContactNameClass query;
  final BodyType queryData;

  UserFilterHistoryCreateProperties({
    required this.id,
    required this.make,
    required this.model,
    required this.query,
    required this.queryData,
  });

  factory UserFilterHistoryCreateProperties.fromJson(Map<String, dynamic> json) => UserFilterHistoryCreateProperties(
        id: EquipmentClass.fromJson(json['id']),
        make: BodyType.fromJson(json['make']),
        model: AdditionalServices.fromJson(json['model']),
        query: ContactNameClass.fromJson(json['query']),
        queryData: BodyType.fromJson(json['query_data']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'make': make.toJson(),
        'model': model.toJson(),
        'query': query.toJson(),
        'query_data': queryData.toJson(),
      };
}

class UserFilterHistoryDelete {
  final List<String> required;
  final String type;
  final UserFilterHistoryDeleteProperties properties;

  UserFilterHistoryDelete({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory UserFilterHistoryDelete.fromJson(Map<String, dynamic> json) => UserFilterHistoryDelete(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: UserFilterHistoryDeleteProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}

class UserFilterHistoryDeleteProperties {
  final IdsList idsList;

  UserFilterHistoryDeleteProperties({
    required this.idsList,
  });

  factory UserFilterHistoryDeleteProperties.fromJson(Map<String, dynamic> json) => UserFilterHistoryDeleteProperties(
        idsList: IdsList.fromJson(json['ids_list']),
      );

  Map<String, dynamic> toJson() => {
        'ids_list': idsList.toJson(),
      };
}

class IdsList {
  final String type;
  final Basic items;

  IdsList({
    required this.type,
    required this.items,
  });

  factory IdsList.fromJson(Map<String, dynamic> json) => IdsList(
        type: json['type'],
        items: Basic.fromJson(json['items']),
      );

  Map<String, dynamic> toJson() => {
        'type': type,
        'items': items.toJson(),
      };
}

class UserFilterHistoryList {
  final List<String> required;
  final String type;
  final UserFilterHistoryListProperties properties;

  UserFilterHistoryList({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory UserFilterHistoryList.fromJson(Map<String, dynamic> json) => UserFilterHistoryList(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: UserFilterHistoryListProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}

class UserFilterHistoryListProperties {
  final IsComparisonClass id;
  final BodyType user;
  final Dealer make;
  final RentWithPurchaseClass model;
  final ContactNameClass query;
  final BodyType queryData;

  UserFilterHistoryListProperties({
    required this.id,
    required this.user,
    required this.make,
    required this.model,
    required this.query,
    required this.queryData,
  });

  factory UserFilterHistoryListProperties.fromJson(Map<String, dynamic> json) => UserFilterHistoryListProperties(
        id: IsComparisonClass.fromJson(json['id']),
        user: BodyType.fromJson(json['user']),
        make: Dealer.fromJson(json['make']),
        model: RentWithPurchaseClass.fromJson(json['model']),
        query: ContactNameClass.fromJson(json['query']),
        queryData: BodyType.fromJson(json['query_data']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'user': user.toJson(),
        'make': make.toJson(),
        'model': model.toJson(),
        'query': query.toJson(),
        'query_data': queryData.toJson(),
      };
}

class UserMini {
  final List<String> required;
  final String type;
  final UserMiniProperties properties;

  UserMini({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory UserMini.fromJson(Map<String, dynamic> json) => UserMini(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: UserMiniProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}

class UserMiniProperties {
  final IsComparisonClass id;
  final EquipmentClass phoneNumber;
  final ContactNameClass fullName;
  final EquipmentClass email;
  final Dealer region;
  final IsComparisonClass image;

  UserMiniProperties({
    required this.id,
    required this.phoneNumber,
    required this.fullName,
    required this.email,
    required this.region,
    required this.image,
  });

  factory UserMiniProperties.fromJson(Map<String, dynamic> json) => UserMiniProperties(
        id: IsComparisonClass.fromJson(json['id']),
        phoneNumber: EquipmentClass.fromJson(json['phone_number']),
        fullName: ContactNameClass.fromJson(json['full_name']),
        email: EquipmentClass.fromJson(json['email']),
        region: Dealer.fromJson(json['region']),
        image: IsComparisonClass.fromJson(json['image']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'phone_number': phoneNumber.toJson(),
        'full_name': fullName.toJson(),
        'email': email.toJson(),
        'region': region.toJson(),
        'image': image.toJson(),
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

class UserReels {
  final String type;
  final UserReelsProperties properties;

  UserReels({
    required this.type,
    required this.properties,
  });

  factory UserReels.fromJson(Map<String, dynamic> json) => UserReels(
        type: json['type'],
        properties: UserReelsProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'type': type,
        'properties': properties.toJson(),
      };
}

class UserReelsProperties {
  final IsComparisonClass id;
  final ContactNameClass firstName;
  final ContactNameClass lastName;
  final IsComparisonClass image;

  UserReelsProperties({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.image,
  });

  factory UserReelsProperties.fromJson(Map<String, dynamic> json) => UserReelsProperties(
        id: IsComparisonClass.fromJson(json['id']),
        firstName: ContactNameClass.fromJson(json['first_name']),
        lastName: ContactNameClass.fromJson(json['last_name']),
        image: IsComparisonClass.fromJson(json['image']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'first_name': firstName.toJson(),
        'last_name': lastName.toJson(),
        'image': image.toJson(),
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

class Verification {
  final List<String> required;
  final String type;
  final VerificationForgetPassProperties properties;

  Verification({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory Verification.fromJson(Map<String, dynamic> json) => Verification(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: VerificationForgetPassProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}

class VerificationForgetPassProperties {
  final ContactNameClass phone;
  final ContactNameClass code;
  final ContactNameClass session;

  VerificationForgetPassProperties({
    required this.phone,
    required this.code,
    required this.session,
  });

  factory VerificationForgetPassProperties.fromJson(Map<String, dynamic> json) => VerificationForgetPassProperties(
        phone: ContactNameClass.fromJson(json['phone']),
        code: ContactNameClass.fromJson(json['code']),
        session: ContactNameClass.fromJson(json['session']),
      );

  Map<String, dynamic> toJson() => {
        'phone': phone.toJson(),
        'code': code.toJson(),
        'session': session.toJson(),
      };
}

class YearClass {
  final List<String> required;
  final String type;
  final YearProperties properties;

  YearClass({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory YearClass.fromJson(Map<String, dynamic> json) => YearClass(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: YearProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}

class YearProperties {
  final IsComparisonClass id;
  final BodyType model;
  final Years years;

  YearProperties({
    required this.id,
    required this.model,
    required this.years,
  });

  factory YearProperties.fromJson(Map<String, dynamic> json) => YearProperties(
        id: IsComparisonClass.fromJson(json['id']),
        model: BodyType.fromJson(json['model']),
        years: Years.fromJson(json['years']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'model': model.toJson(),
        'years': years.toJson(),
      };
}

class Years {
  final String type;
  final Year items;

  Years({
    required this.type,
    required this.items,
  });

  factory Years.fromJson(Map<String, dynamic> json) => Years(
        type: json['type'],
        items: Year.fromJson(json['items']),
      );

  Map<String, dynamic> toJson() => {
        'type': type,
        'items': items.toJson(),
      };
}
