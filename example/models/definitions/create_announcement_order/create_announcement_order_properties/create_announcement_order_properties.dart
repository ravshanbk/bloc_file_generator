import '../../../paths/car_place_category_list/car_place_category_list_get/purple_responses/purple_200/schema/schema_properties/equipment_class/equipment_class.dart';
import '../../car_place_category/car_place_category_properties/contact_name_class/contact_name_class.dart';
import '../../car_place_category/car_place_category_properties/is_camparison_class/is_camparison_class.dart';
import '../../working_days/car_place_working_days_properties/currency/currency.dart';

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
