import 'additional_service/additional_service.dart';
import 'annoncement_compare/annoncement_compare.dart';
import 'announcement/announcement.dart';
import 'announcement_adding_photo_instructions/announcement_adding_photo_instructions.dart';
import 'announcement_call/announcement_call.dart';
import 'announcement_create/announcement_create.dart';
import 'announcement_detail/announcement_detail.dart';
import 'announcement_filter_counter/announcement_filter_counter.dart';
import 'announcement_min_car_price/announcement_min_car_price.dart';
import 'announcement_of_day/announcement_of_day.dart';
import 'announcement_owner_detail/announcement_owner_detail.dart';
import 'announcement_reels/announcement_reels.dart';
import 'announcement_suggest_typesense/announcement_suggest_typesense.dart';
import 'announcement_verify_owner_create/announcement_verify_owner_create.dart';
import 'car_damage_part/car_damage_part.dart';
import 'car_place/car_place.dart';
import 'car_place_category/car_place_category.dart';
import 'car_place_list/car_place_list.dart';
import 'car_place_mini_category/car_place_mini_category.dart';
import 'car_review/car_review.dart';
import 'car_review_comment/car_review_comment.dart';
import 'car_review_comment_create_update/car_review_comment_create_update.dart';
import 'car_review_comment_user/car_review_comment_user.dart';
import 'car_review_create_update/car_review_create_update.dart';
import 'car_review_question/car_review_question.dart';
import 'car_review_star_answer_create/car_review_star_answer_create.dart';
import 'car_review_star_answer_detail/car_review_star_answer_detail.dart';
import 'category/category.dart';
import 'change_forget_pass/change_forget_pass.dart';
import 'change_password/change_password.dart';
import 'color/color.dart';
import 'create_announcement_order/create_announcement_order.dart';
import 'dealer_cars/dealer_cars.dart';
import 'dealer_class/dealer_class.dart';
import 'dealer_markers/dealer_markers.dart';
import 'dealer_mini/dealer_mini.dart';
import 'dealer_reels/dealer_reels.dart';
import 'definition_rent_with_purchase/definition_rent_with_purchase.dart';
import 'district_region/district_region.dart';
import 'e_reels/e_reels.dart';
import 'equipment/equipment.dart';
import 'generation/generation.dart';
import 'get_last_transaction_status/get_last_transaction_status.dart';
import 'image/image.dart';
import 'list_stories/list_stories.dart';
import 'make/make.dart';
import 'map_screen_shot/map_screen_shot.dart';
import 'ment_option/ment_option.dart';
import 'modidication_type/modidication_type.dart';
import 'my_annoucement/my_annoucement.dart';
import 'notification/notification.dart';
import 'option_class/option_class.dart';
import 'payme/payme.dart';
import 'popular_search/popular_search.dart';
import 'product/product.dart';
import 'product_category/product_category.dart';
import 'project_social_auths/project_social_auths.dart';
import 'reels/reels.dart';
import 'region/region.dart';
import 'register_user/register_user.dart';
import 'rent/rent.dart';
import 'rent_car/rent_car.dart';
import 'rent_car_main_page/rent_car_main_page.dart';
import 'rent_order/rent_order.dart';
import 'send_verification_code/send_verification_code.dart';
import 'send_verification_code_for/send_verification_code_for.dart';
import 'social_auth_login/social_auth_login.dart';
import 'static_page/static_page.dart';
import 't_type/t_type.dart';
import 'tariff/tariff.dart';
import 'token_refresh/token_refresh.dart';
import 'user_change_phone/user_change_phone.dart';
import 'user_comparison_create_list/user_comparison_create_list.dart';
import 'user_count_data/user_count_data.dart';
import 'user_detail/user_detail.dart';
import 'user_detail_edit/user_detail_edit.dart';
import 'user_detail_with_counts/user_detail_with_counts.dart';
import 'user_filter_history_create/user_filter_history_create.dart';
import 'user_filter_history_delete/user_filter_history_delete.dart';
import 'user_filter_history_list/user_filter_history_list.dart';
import 'user_mini/user_mini.dart';
import 'user_notification/user_notification.dart';
import 'user_profile_wish_list/user_profile_wish_list.dart';
import 'user_reels/user_reels.dart';
import 'user_search/user_search.dart';
import 'user_short_info/user_short_info.dart';
import 'user_wish_list/user_wish_list.dart';
import 'verification/verification.dart';
import 'very_long.dart/very_long.dart';
import 'working_days/working_days.dart';
import 'year_class/year_class.dart';

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
  final TType bodyType;
  final TType driveType;
  final TType engineType;
  final TType gearboxType;
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
        bodyType: TType.fromJson(json['BodyType']),
        driveType: TType.fromJson(json['DriveType']),
        engineType: TType.fromJson(json['EngineType']),
        gearboxType: TType.fromJson(json['GearboxType']),
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
