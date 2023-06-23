import '../../car_place_category/car_place_category_properties/contact_name_class/contact_name_class.dart';

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
