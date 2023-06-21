import 'car_announcement_call/car_announcement_call.dart';
import 'car_announcement_counter/car_announcement_counter.dart';
import 'car_announcement_id_detail/car_announcement_id_detail.dart';
import 'car_announcement_id_sold/car_announcement_id_sold.dart';
import 'car_announcement_id_update/car_announcement_id_update.dart';
import 'car_announcement_verify_owner_create/car_announcement_verify_owner_create.dart';
import 'car_announcement_verify_owner_id_delete/car_announcement_verify_owner_id_delete.dart';
import 'car_announcements_min_max_price_year/car_announcements_min_max_price_year.dart';
import 'car_comparison/car_comparison.dart';
import 'car_place_category_list/car_place_category_list.dart';
import 'car_place_list_class/car_place_list_class.dart';
import 'car_place_slug/car_place_slug.dart';
import 'payment_create_announcement_order/payment_create_announcement_order.dart';
import 'user_detail_edit/user_detail_edit.dart';

class Paths {
  final CarPlaceCategoryList carPlaceCategoryList;
  final CarPlaceListClass carPlaceList;
  final CarPlaceListClass carPlaceMap;
  final CarPlaceSlug carPlaceSlug;
  final CarPlaceListClass carPlaceSlugProductCategoryList;
  final CarPlaceListClass carPlaceSlugProductList;
  final CarPlaceListClass carPlaceSlugCategoryIdList;
  final CarAnnouncementCounter carAnnouncementCounter;
  final CarAnnouncementCall carAnnouncementCall;
  final CarAnnouncementCounter carAnnouncementCompare;
  final CarAnnouncementCall carAnnouncementCreate;
  final CarPlaceSlug carAnnouncementDealOfDay;
  final CarPlaceCategoryList carAnnouncementList;
  final CarAnnouncementCall carAnnouncementOwnerDetail;
  final CarPlaceListClass carAnnouncementOwnerId;
  final CarPlaceListClass carAnnouncementPhotoInstruction;
  final CarAnnouncementCall carAnnouncementSmsVerificationEntrypoint;
  final CarAnnouncementCall carAnnouncementSmsVerificationVerify;
  final CarAnnouncementVerifyOwnerCreate carAnnouncementVerifyOwnerCreate;
  final CarAnnouncementVerifyOwnerIdDelete carAnnouncementVerifyOwnerIdDelete;
  final CarAnnouncementIdDetail carAnnouncementIdDetail;
  final CarAnnouncementIdSold carAnnouncementIdSold;
  final CarAnnouncementIdUpdate carAnnouncementIdUpdate;
  final CarAnnouncementsMinMaxPriceYear carAnnouncementsMinMaxPriceYear;
  final CarPlaceListClass carBodyTypes;
  final CarComparison carComparison;
  final CarAnnouncementVerifyOwnerIdDelete carComparisonAnnouncementIdDeleteAnnouncement;
  final CarPlaceListClass carDriveTypes;
  final CarPlaceListClass carEquipmentsList;
  final CarPlaceListClass carEquipmentsOptionsList;
  final CarPlaceListClass carEquipmentsOptionsEquipmentId;
  final CarPlaceListClass carEquipmentsModelId;
  final CarPlaceListClass carGasEquipments;
  final CarPlaceListClass carGearboxTypes;
  final CarPlaceListClass carMakes;
  final CarPlaceListClass carMakesTop;
  final CarAnnouncementCall carMinCarPrice;
  final CarPlaceListClass carMyAnnouncements;
  final CarAnnouncementsMinMaxPriceYear carPriceStatistics;
  final CarPlaceListClass carTopAnnouncements;
  final CarPlaceListClass carGenarationIdBodyTypeIdEngineType;
  final CarPlaceListClass carGenerationIdBodyTypes;
  final CarPlaceListClass carGenerationIdBodyTypeIdEngineTypeIdDriveType;
  final CarPlaceListClass carGenerationIdBodyTypeIdEngineTypeIdDriveTypeIdGearboxType;
  final CarPlaceListClass carGenerationIdBodyTypeIdEngineTypeIdDriveTypeIdGearboxTypeIdModificationType;
  final CarPlaceListClass carMakeIdModels;
  final CarAnnouncementIdDetail carModelIdYears;
  final CarPlaceListClass carModelIdYearGenerations;
  final CarPlaceListClass commonColors;
  final CarPlaceListClass commonDistrictsRegionId;
  final CarAnnouncementCall commonMapScreenshot;
  final CarPlaceListClass commonRegions;
  final CarPlaceListClass commonStaticPages;
  final CarAnnouncementIdDetail commonStaticPagesSlug;
  final CarPlaceListClass commonUsedSocialAuths;
  final CarPlaceListClass esAnnouncementElasticSearch;
  final CarPlaceListClass esAnnouncementElasticSearchFunctionalSuggest;
  final CarPlaceListClass esAnnouncementElasticSearchSuggest;
  final CarAnnouncementIdDetail esAnnouncementElasticSearchId;
  final CarAnnouncementCounter esSuggest;
  final PaymentCreateAnnouncementOrder paymentCreateAnnouncementOrder;
  final CarAnnouncementIdDetail paymentLastTransactionStatusOrderId;
  final CarAnnouncementCall paymentPaymeCallBack;
  final CarPlaceListClass paymentTariff;
  final CarPlaceListClass reels;
  final CarAnnouncementCall reelsLike;
  final CarPlaceListClass reelsOfferOfTheDay;
  final CarAnnouncementCall reelsShare;
  final CarAnnouncementIdDetail reelsId;
  final CarPlaceListClass rentAdditionalService;
  final CarPlaceListClass rentList;
  final CarPlaceCategoryList rentMainPageRentCarTypeId;
  final CarAnnouncementCall rentOrder;
  final CarPlaceListClass rentOrderList;
  final CarPlaceListClass rentType;
  final CarPlaceListClass rentTypeIdCategories;
  final CarAnnouncementIdDetail rentId;
  final CarAnnouncementIdUpdate reviewCommentsId;
  final CarAnnouncementCall reviewCreate;
  final CarPlaceListClass reviewList;
  final CarPlaceListClass reviewMyReviews;
  final CarAnnouncementIdUpdate reviewId;
  final CarPlaceListClass reviewIdComments;
  final CarAnnouncementCall reviewIdCommentsCreate;
  final CarAnnouncementIdDetail reviewIdDetail;
  final CarPlaceListClass stories;
  final CarAnnouncementsMinMaxPriceYear storiesItemIdRead;
  final CarAnnouncementCall usersChangePassword;
  final CarAnnouncementCall usersChangePhone;
  final CarAnnouncementCall usersChangePhoneSmsVerificationEntrypoint;
  final CarPlaceListClass usersDealersMap;
  final CarPlaceListClass usersDealers;
  final CarAnnouncementIdSold usersDealersWatchContactId;
  final CarPlaceListClass usersDealersDealerMarkMarkCars;
  final CarPlaceSlug usersDealersSlug;
  final CarPlaceListClass usersDealersSlugCars;
  final CarPlaceListClass usersDealersSlugMarks;
  final CarPlaceSlug usersDetailWithCounts;
  final CarPlaceSlug usersDetail;
  final UsersDetailEdit usersDetailEdit;
  final CarAnnouncementCall usersFilterHistoryCreate;
  final CarAnnouncementVerifyOwnerIdDelete usersFilterHistoryDelete;
  final CarPlaceListClass usersFilterHistoryList;
  final CarAnnouncementCall usersForgetPassChangePassword;
  final CarAnnouncementCall usersForgetPassSmsVerificationEntrypoint;
  final CarAnnouncementCall usersForgetPassSmsVerificationVerify;
  final CarAnnouncementCall usersLogin;
  final CarPlaceListClass usersNotificationList;
  final CarAnnouncementIdSold usersNotificationReadAll;
  final CarAnnouncementIdDetail usersNotificationId;
  final CarPlaceListClass usersPopularSearches;
  final CarPlaceSlug usersProfileShort;
  final CarAnnouncementCall usersRefreshToken;
  final CarAnnouncementCall usersRegistration;
  final CarAnnouncementCall usersRegistrationSmsVerificationEntrypoint;
  final CarAnnouncementCall usersRegistrationSmsVerificationVerify;
  final CarPlaceListClass usersSearches;
  final CarAnnouncementCall usersSocialAuthLoginApple;
  final CarAnnouncementCall usersSocialAuthLoginFacebook;
  final CarAnnouncementCall usersSocialAuthLoginGoogle;
  final CarAnnouncementCall usersWishlistAnnouncementAdd;
  final CarPlaceListClass usersWishlistAnnouncementList;
  final CarAnnouncementCall usersWishlistAnnouncementRemove;
  final CarPlaceListClass usersIdCars;

  Paths({
    required this.carPlaceCategoryList,
    required this.carPlaceList,
    required this.carPlaceMap,
    required this.carPlaceSlug,
    required this.carPlaceSlugProductCategoryList,
    required this.carPlaceSlugProductList,
    required this.carPlaceSlugCategoryIdList,
    required this.carAnnouncementCounter,
    required this.carAnnouncementCall,
    required this.carAnnouncementCompare,
    required this.carAnnouncementCreate,
    required this.carAnnouncementDealOfDay,
    required this.carAnnouncementList,
    required this.carAnnouncementOwnerDetail,
    required this.carAnnouncementOwnerId,
    required this.carAnnouncementPhotoInstruction,
    required this.carAnnouncementSmsVerificationEntrypoint,
    required this.carAnnouncementSmsVerificationVerify,
    required this.carAnnouncementVerifyOwnerCreate,
    required this.carAnnouncementVerifyOwnerIdDelete,
    required this.carAnnouncementIdDetail,
    required this.carAnnouncementIdSold,
    required this.carAnnouncementIdUpdate,
    required this.carAnnouncementsMinMaxPriceYear,
    required this.carBodyTypes,
    required this.carComparison,
    required this.carComparisonAnnouncementIdDeleteAnnouncement,
    required this.carDriveTypes,
    required this.carEquipmentsList,
    required this.carEquipmentsOptionsList,
    required this.carEquipmentsOptionsEquipmentId,
    required this.carEquipmentsModelId,
    required this.carGasEquipments,
    required this.carGearboxTypes,
    required this.carMakes,
    required this.carMakesTop,
    required this.carMinCarPrice,
    required this.carMyAnnouncements,
    required this.carPriceStatistics,
    required this.carTopAnnouncements,
    required this.carGenarationIdBodyTypeIdEngineType,
    required this.carGenerationIdBodyTypes,
    required this.carGenerationIdBodyTypeIdEngineTypeIdDriveType,
    required this.carGenerationIdBodyTypeIdEngineTypeIdDriveTypeIdGearboxType,
    required this.carGenerationIdBodyTypeIdEngineTypeIdDriveTypeIdGearboxTypeIdModificationType,
    required this.carMakeIdModels,
    required this.carModelIdYears,
    required this.carModelIdYearGenerations,
    required this.commonColors,
    required this.commonDistrictsRegionId,
    required this.commonMapScreenshot,
    required this.commonRegions,
    required this.commonStaticPages,
    required this.commonStaticPagesSlug,
    required this.commonUsedSocialAuths,
    required this.esAnnouncementElasticSearch,
    required this.esAnnouncementElasticSearchFunctionalSuggest,
    required this.esAnnouncementElasticSearchSuggest,
    required this.esAnnouncementElasticSearchId,
    required this.esSuggest,
    required this.paymentCreateAnnouncementOrder,
    required this.paymentLastTransactionStatusOrderId,
    required this.paymentPaymeCallBack,
    required this.paymentTariff,
    required this.reels,
    required this.reelsLike,
    required this.reelsOfferOfTheDay,
    required this.reelsShare,
    required this.reelsId,
    required this.rentAdditionalService,
    required this.rentList,
    required this.rentMainPageRentCarTypeId,
    required this.rentOrder,
    required this.rentOrderList,
    required this.rentType,
    required this.rentTypeIdCategories,
    required this.rentId,
    required this.reviewCommentsId,
    required this.reviewCreate,
    required this.reviewList,
    required this.reviewMyReviews,
    required this.reviewId,
    required this.reviewIdComments,
    required this.reviewIdCommentsCreate,
    required this.reviewIdDetail,
    required this.stories,
    required this.storiesItemIdRead,
    required this.usersChangePassword,
    required this.usersChangePhone,
    required this.usersChangePhoneSmsVerificationEntrypoint,
    required this.usersDealersMap,
    required this.usersDealers,
    required this.usersDealersWatchContactId,
    required this.usersDealersDealerMarkMarkCars,
    required this.usersDealersSlug,
    required this.usersDealersSlugCars,
    required this.usersDealersSlugMarks,
    required this.usersDetailWithCounts,
    required this.usersDetail,
    required this.usersDetailEdit,
    required this.usersFilterHistoryCreate,
    required this.usersFilterHistoryDelete,
    required this.usersFilterHistoryList,
    required this.usersForgetPassChangePassword,
    required this.usersForgetPassSmsVerificationEntrypoint,
    required this.usersForgetPassSmsVerificationVerify,
    required this.usersLogin,
    required this.usersNotificationList,
    required this.usersNotificationReadAll,
    required this.usersNotificationId,
    required this.usersPopularSearches,
    required this.usersProfileShort,
    required this.usersRefreshToken,
    required this.usersRegistration,
    required this.usersRegistrationSmsVerificationEntrypoint,
    required this.usersRegistrationSmsVerificationVerify,
    required this.usersSearches,
    required this.usersSocialAuthLoginApple,
    required this.usersSocialAuthLoginFacebook,
    required this.usersSocialAuthLoginGoogle,
    required this.usersWishlistAnnouncementAdd,
    required this.usersWishlistAnnouncementList,
    required this.usersWishlistAnnouncementRemove,
    required this.usersIdCars,
  });

  factory Paths.fromJson(Map<String, dynamic> json) => Paths(
        carPlaceCategoryList: CarPlaceCategoryList.fromJson(json['/car-place/category/list/']),
        carPlaceList: CarPlaceListClass.fromJson(json['/car-place/list/']),
        carPlaceMap: CarPlaceListClass.fromJson(json['/car-place/map/']),
        carPlaceSlug: CarPlaceSlug.fromJson(json['/car-place/{slug}/']),
        carPlaceSlugProductCategoryList: CarPlaceListClass.fromJson(json['/car-place/{slug}/product/category/list/']),
        carPlaceSlugProductList: CarPlaceListClass.fromJson(json['/car-place/{slug}/product/list/']),
        carPlaceSlugCategoryIdList: CarPlaceListClass.fromJson(json['/car-place/{slug}/{category_id}/list/']),
        carAnnouncementCounter: CarAnnouncementCounter.fromJson(json['/car/announcement-counter/']),
        carAnnouncementCall: CarAnnouncementCall.fromJson(json['/car/announcement/call/']),
        carAnnouncementCompare: CarAnnouncementCounter.fromJson(json['/car/announcement/compare/']),
        carAnnouncementCreate: CarAnnouncementCall.fromJson(json['/car/announcement/create/']),
        carAnnouncementDealOfDay: CarPlaceSlug.fromJson(json['/car/announcement/deal-of-day/']),
        carAnnouncementList: CarPlaceCategoryList.fromJson(json['/car/announcement/list/']),
        carAnnouncementOwnerDetail: CarAnnouncementCall.fromJson(json['/car/announcement/owner-detail/']),
        carAnnouncementOwnerId: CarPlaceListClass.fromJson(json['/car/announcement/owner/{id}/']),
        carAnnouncementPhotoInstruction: CarPlaceListClass.fromJson(json['/car/announcement/photo-instruction/']),
        carAnnouncementSmsVerificationEntrypoint:
            CarAnnouncementCall.fromJson(json['/car/announcement/sms-verification/entrypoint/']),
        carAnnouncementSmsVerificationVerify:
            CarAnnouncementCall.fromJson(json['/car/announcement/sms-verification/verify']),
        carAnnouncementVerifyOwnerCreate:
            CarAnnouncementVerifyOwnerCreate.fromJson(json['/car/announcement/verify-owner/create/']),
        carAnnouncementVerifyOwnerIdDelete:
            CarAnnouncementVerifyOwnerIdDelete.fromJson(json['/car/announcement/verify-owner/{id}/delete/']),
        carAnnouncementIdDetail: CarAnnouncementIdDetail.fromJson(json['/car/announcement/{id}/detail/']),
        carAnnouncementIdSold: CarAnnouncementIdSold.fromJson(json['/car/announcement/{id}/sold/']),
        carAnnouncementIdUpdate: CarAnnouncementIdUpdate.fromJson(json['/car/announcement/{id}/update/']),
        carAnnouncementsMinMaxPriceYear:
            CarAnnouncementsMinMaxPriceYear.fromJson(json['/car/announcements-min-max-price-year/']),
        carBodyTypes: CarPlaceListClass.fromJson(json['/car/body-types/']),
        carComparison: CarComparison.fromJson(json['/car/comparison/']),
        carComparisonAnnouncementIdDeleteAnnouncement:
            CarAnnouncementVerifyOwnerIdDelete.fromJson(json['/car/comparison/{announcement_id}/delete-announcement/']),
        carDriveTypes: CarPlaceListClass.fromJson(json['/car/drive-types/']),
        carEquipmentsList: CarPlaceListClass.fromJson(json['/car/equipments/list/']),
        carEquipmentsOptionsList: CarPlaceListClass.fromJson(json['/car/equipments/options/list/']),
        carEquipmentsOptionsEquipmentId: CarPlaceListClass.fromJson(json['/car/equipments/options/{equipment_id}/']),
        carEquipmentsModelId: CarPlaceListClass.fromJson(json['/car/equipments/{model_id}/']),
        carGasEquipments: CarPlaceListClass.fromJson(json['/car/gas-equipments/']),
        carGearboxTypes: CarPlaceListClass.fromJson(json['/car/gearbox-types/']),
        carMakes: CarPlaceListClass.fromJson(json['/car/makes/']),
        carMakesTop: CarPlaceListClass.fromJson(json['/car/makes/top/']),
        carMinCarPrice: CarAnnouncementCall.fromJson(json['/car/min-car-price/']),
        carMyAnnouncements: CarPlaceListClass.fromJson(json['/car/my-announcements/']),
        carPriceStatistics: CarAnnouncementsMinMaxPriceYear.fromJson(json['/car/price-statistics/']),
        carTopAnnouncements: CarPlaceListClass.fromJson(json['/car/top-announcements/']),
        carGenarationIdBodyTypeIdEngineType:
            CarPlaceListClass.fromJson(json['/car/{genaration_id}/{body_type_id}/engine_type/']),
        carGenerationIdBodyTypes: CarPlaceListClass.fromJson(json['/car/{generation_id}/body-types/']),
        carGenerationIdBodyTypeIdEngineTypeIdDriveType:
            CarPlaceListClass.fromJson(json['/car/{generation_id}/{body_type_id}/{engine_type_id}/drive_type/']),
        carGenerationIdBodyTypeIdEngineTypeIdDriveTypeIdGearboxType: CarPlaceListClass.fromJson(
            json['/car/{generation_id}/{body_type_id}/{engine_type_id}/{drive_type_id}/gearbox_type/']),
        carGenerationIdBodyTypeIdEngineTypeIdDriveTypeIdGearboxTypeIdModificationType: CarPlaceListClass.fromJson(json[
            '/car/{generation_id}/{body_type_id}/{engine_type_id}/{drive_type_id}/{gearbox_type_id}/modification-type/']),
        carMakeIdModels: CarPlaceListClass.fromJson(json['/car/{make_id}/models/']),
        carModelIdYears: CarAnnouncementIdDetail.fromJson(json['/car/{model_id}/years/']),
        carModelIdYearGenerations: CarPlaceListClass.fromJson(json['/car/{model_id}/{year}generations/']),
        commonColors: CarPlaceListClass.fromJson(json['/common/colors/']),
        commonDistrictsRegionId: CarPlaceListClass.fromJson(json['/common/districts/{region_id}']),
        commonMapScreenshot: CarAnnouncementCall.fromJson(json['/common/map/screenshot']),
        commonRegions: CarPlaceListClass.fromJson(json['/common/regions/']),
        commonStaticPages: CarPlaceListClass.fromJson(json['/common/static-pages/']),
        commonStaticPagesSlug: CarAnnouncementIdDetail.fromJson(json['/common/static-pages/{slug}/']),
        commonUsedSocialAuths: CarPlaceListClass.fromJson(json['/common/used-social-auths/']),
        esAnnouncementElasticSearch: CarPlaceListClass.fromJson(json['/es/AnnouncementElasticSearch/']),
        esAnnouncementElasticSearchFunctionalSuggest:
            CarPlaceListClass.fromJson(json['/es/AnnouncementElasticSearch/functional_suggest/']),
        esAnnouncementElasticSearchSuggest: CarPlaceListClass.fromJson(json['/es/AnnouncementElasticSearch/suggest/']),
        esAnnouncementElasticSearchId: CarAnnouncementIdDetail.fromJson(json['/es/AnnouncementElasticSearch/{id}/']),
        esSuggest: CarAnnouncementCounter.fromJson(json['/es/suggest/']),
        paymentCreateAnnouncementOrder:
            PaymentCreateAnnouncementOrder.fromJson(json['/payment/create-announcement-order/']),
        paymentLastTransactionStatusOrderId:
            CarAnnouncementIdDetail.fromJson(json['/payment/last-transaction-status/{order_id}']),
        paymentPaymeCallBack: CarAnnouncementCall.fromJson(json['/payment/payme-call-back/']),
        paymentTariff: CarPlaceListClass.fromJson(json['/payment/tariff/']),
        reels: CarPlaceListClass.fromJson(json['/reels/']),
        reelsLike: CarAnnouncementCall.fromJson(json['/reels/like/']),
        reelsOfferOfTheDay: CarPlaceListClass.fromJson(json['/reels/offer-of-the-day/']),
        reelsShare: CarAnnouncementCall.fromJson(json['/reels/share/']),
        reelsId: CarAnnouncementIdDetail.fromJson(json['/reels/{id}/']),
        rentAdditionalService: CarPlaceListClass.fromJson(json['/rent/additional-service/']),
        rentList: CarPlaceListClass.fromJson(json['/rent/list/']),
        rentMainPageRentCarTypeId: CarPlaceCategoryList.fromJson(json['/rent/main_page/{rent_car_type_id}/']),
        rentOrder: CarAnnouncementCall.fromJson(json['/rent/order/']),
        rentOrderList: CarPlaceListClass.fromJson(json['/rent/order/list']),
        rentType: CarPlaceListClass.fromJson(json['/rent/type/']),
        rentTypeIdCategories: CarPlaceListClass.fromJson(json['/rent/type/{id}/categories/']),
        rentId: CarAnnouncementIdDetail.fromJson(json['/rent/{id}/']),
        reviewCommentsId: CarAnnouncementIdUpdate.fromJson(json['/review/comments/{id}/']),
        reviewCreate: CarAnnouncementCall.fromJson(json['/review/create/']),
        reviewList: CarPlaceListClass.fromJson(json['/review/list/']),
        reviewMyReviews: CarPlaceListClass.fromJson(json['/review/my-reviews/']),
        reviewId: CarAnnouncementIdUpdate.fromJson(json['/review/{id}/']),
        reviewIdComments: CarPlaceListClass.fromJson(json['/review/{id}/comments/']),
        reviewIdCommentsCreate: CarAnnouncementCall.fromJson(json['/review/{id}/comments/create/']),
        reviewIdDetail: CarAnnouncementIdDetail.fromJson(json['/review/{id}/detail/']),
        stories: CarPlaceListClass.fromJson(json['/stories/']),
        storiesItemIdRead: CarAnnouncementsMinMaxPriceYear.fromJson(json['/stories/item/{id}/read/']),
        usersChangePassword: CarAnnouncementCall.fromJson(json['/users/change-password/']),
        usersChangePhone: CarAnnouncementCall.fromJson(json['/users/change-phone/']),
        usersChangePhoneSmsVerificationEntrypoint:
            CarAnnouncementCall.fromJson(json['/users/change-phone/sms-verification/entrypoint/']),
        usersDealersMap: CarPlaceListClass.fromJson(json['/users/dealers-map/']),
        usersDealers: CarPlaceListClass.fromJson(json['/users/dealers/']),
        usersDealersWatchContactId: CarAnnouncementIdSold.fromJson(json['/users/dealers/watch-contact/{id}/']),
        usersDealersDealerMarkMarkCars: CarPlaceListClass.fromJson(json['/users/dealers/{dealer}/mark/{mark}/cars/']),
        usersDealersSlug: CarPlaceSlug.fromJson(json['/users/dealers/{slug}/']),
        usersDealersSlugCars: CarPlaceListClass.fromJson(json['/users/dealers/{slug}/cars/']),
        usersDealersSlugMarks: CarPlaceListClass.fromJson(json['/users/dealers/{slug}/marks/']),
        usersDetailWithCounts: CarPlaceSlug.fromJson(json['/users/detail-with-counts/']),
        usersDetail: CarPlaceSlug.fromJson(json['/users/detail/']),
        usersDetailEdit: UsersDetailEdit.fromJson(json['/users/detail/edit/']),
        usersFilterHistoryCreate: CarAnnouncementCall.fromJson(json['/users/filter-history/create/']),
        usersFilterHistoryDelete: CarAnnouncementVerifyOwnerIdDelete.fromJson(json['/users/filter-history/delete/']),
        usersFilterHistoryList: CarPlaceListClass.fromJson(json['/users/filter-history/list/']),
        usersForgetPassChangePassword: CarAnnouncementCall.fromJson(json['/users/forget-pass/change-password/']),
        usersForgetPassSmsVerificationEntrypoint:
            CarAnnouncementCall.fromJson(json['/users/forget-pass/sms-verification/entrypoint/']),
        usersForgetPassSmsVerificationVerify:
            CarAnnouncementCall.fromJson(json['/users/forget-pass/sms-verification/verify/']),
        usersLogin: CarAnnouncementCall.fromJson(json['/users/login/']),
        usersNotificationList: CarPlaceListClass.fromJson(json['/users/notification/list/']),
        usersNotificationReadAll: CarAnnouncementIdSold.fromJson(json['/users/notification/read-all/']),
        usersNotificationId: CarAnnouncementIdDetail.fromJson(json['/users/notification/{id}/']),
        usersPopularSearches: CarPlaceListClass.fromJson(json['/users/popular-searches/']),
        usersProfileShort: CarPlaceSlug.fromJson(json['/users/profile/short/']),
        usersRefreshToken: CarAnnouncementCall.fromJson(json['/users/refresh/token/']),
        usersRegistration: CarAnnouncementCall.fromJson(json['/users/registration/']),
        usersRegistrationSmsVerificationEntrypoint:
            CarAnnouncementCall.fromJson(json['/users/registration/sms-verification/entrypoint/']),
        usersRegistrationSmsVerificationVerify:
            CarAnnouncementCall.fromJson(json['/users/registration/sms-verification/verify/']),
        usersSearches: CarPlaceListClass.fromJson(json['/users/searches/']),
        usersSocialAuthLoginApple: CarAnnouncementCall.fromJson(json['/users/social-auth/login/apple/']),
        usersSocialAuthLoginFacebook: CarAnnouncementCall.fromJson(json['/users/social-auth/login/facebook/']),
        usersSocialAuthLoginGoogle: CarAnnouncementCall.fromJson(json['/users/social-auth/login/google/']),
        usersWishlistAnnouncementAdd: CarAnnouncementCall.fromJson(json['/users/wishlist/announcement/add/']),
        usersWishlistAnnouncementList: CarPlaceListClass.fromJson(json['/users/wishlist/announcement/list/']),
        usersWishlistAnnouncementRemove: CarAnnouncementCall.fromJson(json['/users/wishlist/announcement/remove/']),
        usersIdCars: CarPlaceListClass.fromJson(json['/users/{id}/cars/']),
      );

  Map<String, dynamic> toJson() => {
        '/car-place/category/list/': carPlaceCategoryList.toJson(),
        '/car-place/list/': carPlaceList.toJson(),
        '/car-place/map/': carPlaceMap.toJson(),
        '/car-place/{slug}/': carPlaceSlug.toJson(),
        '/car-place/{slug}/product/category/list/': carPlaceSlugProductCategoryList.toJson(),
        '/car-place/{slug}/product/list/': carPlaceSlugProductList.toJson(),
        '/car-place/{slug}/{category_id}/list/': carPlaceSlugCategoryIdList.toJson(),
        '/car/announcement-counter/': carAnnouncementCounter.toJson(),
        '/car/announcement/call/': carAnnouncementCall.toJson(),
        '/car/announcement/compare/': carAnnouncementCompare.toJson(),
        '/car/announcement/create/': carAnnouncementCreate.toJson(),
        '/car/announcement/deal-of-day/': carAnnouncementDealOfDay.toJson(),
        '/car/announcement/list/': carAnnouncementList.toJson(),
        '/car/announcement/owner-detail/': carAnnouncementOwnerDetail.toJson(),
        '/car/announcement/owner/{id}/': carAnnouncementOwnerId.toJson(),
        '/car/announcement/photo-instruction/': carAnnouncementPhotoInstruction.toJson(),
        '/car/announcement/sms-verification/entrypoint/': carAnnouncementSmsVerificationEntrypoint.toJson(),
        '/car/announcement/sms-verification/verify': carAnnouncementSmsVerificationVerify.toJson(),
        '/car/announcement/verify-owner/create/': carAnnouncementVerifyOwnerCreate.toJson(),
        '/car/announcement/verify-owner/{id}/delete/': carAnnouncementVerifyOwnerIdDelete.toJson(),
        '/car/announcement/{id}/detail/': carAnnouncementIdDetail.toJson(),
        '/car/announcement/{id}/sold/': carAnnouncementIdSold.toJson(),
        '/car/announcement/{id}/update/': carAnnouncementIdUpdate.toJson(),
        '/car/announcements-min-max-price-year/': carAnnouncementsMinMaxPriceYear.toJson(),
        '/car/body-types/': carBodyTypes.toJson(),
        '/car/comparison/': carComparison.toJson(),
        '/car/comparison/{announcement_id}/delete-announcement/':
            carComparisonAnnouncementIdDeleteAnnouncement.toJson(),
        '/car/drive-types/': carDriveTypes.toJson(),
        '/car/equipments/list/': carEquipmentsList.toJson(),
        '/car/equipments/options/list/': carEquipmentsOptionsList.toJson(),
        '/car/equipments/options/{equipment_id}/': carEquipmentsOptionsEquipmentId.toJson(),
        '/car/equipments/{model_id}/': carEquipmentsModelId.toJson(),
        '/car/gas-equipments/': carGasEquipments.toJson(),
        '/car/gearbox-types/': carGearboxTypes.toJson(),
        '/car/makes/': carMakes.toJson(),
        '/car/makes/top/': carMakesTop.toJson(),
        '/car/min-car-price/': carMinCarPrice.toJson(),
        '/car/my-announcements/': carMyAnnouncements.toJson(),
        '/car/price-statistics/': carPriceStatistics.toJson(),
        '/car/top-announcements/': carTopAnnouncements.toJson(),
        '/car/{genaration_id}/{body_type_id}/engine_type/': carGenarationIdBodyTypeIdEngineType.toJson(),
        '/car/{generation_id}/body-types/': carGenerationIdBodyTypes.toJson(),
        '/car/{generation_id}/{body_type_id}/{engine_type_id}/drive_type/':
            carGenerationIdBodyTypeIdEngineTypeIdDriveType.toJson(),
        '/car/{generation_id}/{body_type_id}/{engine_type_id}/{drive_type_id}/gearbox_type/':
            carGenerationIdBodyTypeIdEngineTypeIdDriveTypeIdGearboxType.toJson(),
        '/car/{generation_id}/{body_type_id}/{engine_type_id}/{drive_type_id}/{gearbox_type_id}/modification-type/':
            carGenerationIdBodyTypeIdEngineTypeIdDriveTypeIdGearboxTypeIdModificationType.toJson(),
        '/car/{make_id}/models/': carMakeIdModels.toJson(),
        '/car/{model_id}/years/': carModelIdYears.toJson(),
        '/car/{model_id}/{year}generations/': carModelIdYearGenerations.toJson(),
        '/common/colors/': commonColors.toJson(),
        '/common/districts/{region_id}': commonDistrictsRegionId.toJson(),
        '/common/map/screenshot': commonMapScreenshot.toJson(),
        '/common/regions/': commonRegions.toJson(),
        '/common/static-pages/': commonStaticPages.toJson(),
        '/common/static-pages/{slug}/': commonStaticPagesSlug.toJson(),
        '/common/used-social-auths/': commonUsedSocialAuths.toJson(),
        '/es/AnnouncementElasticSearch/': esAnnouncementElasticSearch.toJson(),
        '/es/AnnouncementElasticSearch/functional_suggest/': esAnnouncementElasticSearchFunctionalSuggest.toJson(),
        '/es/AnnouncementElasticSearch/suggest/': esAnnouncementElasticSearchSuggest.toJson(),
        '/es/AnnouncementElasticSearch/{id}/': esAnnouncementElasticSearchId.toJson(),
        '/es/suggest/': esSuggest.toJson(),
        '/payment/create-announcement-order/': paymentCreateAnnouncementOrder.toJson(),
        '/payment/last-transaction-status/{order_id}': paymentLastTransactionStatusOrderId.toJson(),
        '/payment/payme-call-back/': paymentPaymeCallBack.toJson(),
        '/payment/tariff/': paymentTariff.toJson(),
        '/reels/': reels.toJson(),
        '/reels/like/': reelsLike.toJson(),
        '/reels/offer-of-the-day/': reelsOfferOfTheDay.toJson(),
        '/reels/share/': reelsShare.toJson(),
        '/reels/{id}/': reelsId.toJson(),
        '/rent/additional-service/': rentAdditionalService.toJson(),
        '/rent/list/': rentList.toJson(),
        '/rent/main_page/{rent_car_type_id}/': rentMainPageRentCarTypeId.toJson(),
        '/rent/order/': rentOrder.toJson(),
        '/rent/order/list': rentOrderList.toJson(),
        '/rent/type/': rentType.toJson(),
        '/rent/type/{id}/categories/': rentTypeIdCategories.toJson(),
        '/rent/{id}/': rentId.toJson(),
        '/review/comments/{id}/': reviewCommentsId.toJson(),
        '/review/create/': reviewCreate.toJson(),
        '/review/list/': reviewList.toJson(),
        '/review/my-reviews/': reviewMyReviews.toJson(),
        '/review/{id}/': reviewId.toJson(),
        '/review/{id}/comments/': reviewIdComments.toJson(),
        '/review/{id}/comments/create/': reviewIdCommentsCreate.toJson(),
        '/review/{id}/detail/': reviewIdDetail.toJson(),
        '/stories/': stories.toJson(),
        '/stories/item/{id}/read/': storiesItemIdRead.toJson(),
        '/users/change-password/': usersChangePassword.toJson(),
        '/users/change-phone/': usersChangePhone.toJson(),
        '/users/change-phone/sms-verification/entrypoint/': usersChangePhoneSmsVerificationEntrypoint.toJson(),
        '/users/dealers-map/': usersDealersMap.toJson(),
        '/users/dealers/': usersDealers.toJson(),
        '/users/dealers/watch-contact/{id}/': usersDealersWatchContactId.toJson(),
        '/users/dealers/{dealer}/mark/{mark}/cars/': usersDealersDealerMarkMarkCars.toJson(),
        '/users/dealers/{slug}/': usersDealersSlug.toJson(),
        '/users/dealers/{slug}/cars/': usersDealersSlugCars.toJson(),
        '/users/dealers/{slug}/marks/': usersDealersSlugMarks.toJson(),
        '/users/detail-with-counts/': usersDetailWithCounts.toJson(),
        '/users/detail/': usersDetail.toJson(),
        '/users/detail/edit/': usersDetailEdit.toJson(),
        '/users/filter-history/create/': usersFilterHistoryCreate.toJson(),
        '/users/filter-history/delete/': usersFilterHistoryDelete.toJson(),
        '/users/filter-history/list/': usersFilterHistoryList.toJson(),
        '/users/forget-pass/change-password/': usersForgetPassChangePassword.toJson(),
        '/users/forget-pass/sms-verification/entrypoint/': usersForgetPassSmsVerificationEntrypoint.toJson(),
        '/users/forget-pass/sms-verification/verify/': usersForgetPassSmsVerificationVerify.toJson(),
        '/users/login/': usersLogin.toJson(),
        '/users/notification/list/': usersNotificationList.toJson(),
        '/users/notification/read-all/': usersNotificationReadAll.toJson(),
        '/users/notification/{id}/': usersNotificationId.toJson(),
        '/users/popular-searches/': usersPopularSearches.toJson(),
        '/users/profile/short/': usersProfileShort.toJson(),
        '/users/refresh/token/': usersRefreshToken.toJson(),
        '/users/registration/': usersRegistration.toJson(),
        '/users/registration/sms-verification/entrypoint/': usersRegistrationSmsVerificationEntrypoint.toJson(),
        '/users/registration/sms-verification/verify/': usersRegistrationSmsVerificationVerify.toJson(),
        '/users/searches/': usersSearches.toJson(),
        '/users/social-auth/login/apple/': usersSocialAuthLoginApple.toJson(),
        '/users/social-auth/login/facebook/': usersSocialAuthLoginFacebook.toJson(),
        '/users/social-auth/login/google/': usersSocialAuthLoginGoogle.toJson(),
        '/users/wishlist/announcement/add/': usersWishlistAnnouncementAdd.toJson(),
        '/users/wishlist/announcement/list/': usersWishlistAnnouncementList.toJson(),
        '/users/wishlist/announcement/remove/': usersWishlistAnnouncementRemove.toJson(),
        '/users/{id}/cars/': usersIdCars.toJson(),
      };
}
