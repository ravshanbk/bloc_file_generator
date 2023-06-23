import '../../car_place_category/car_place_category_properties/contact_name_class/contact_name_class.dart';

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
