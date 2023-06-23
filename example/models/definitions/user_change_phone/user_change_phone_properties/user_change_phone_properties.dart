import '../../car_place_category/car_place_category_properties/contact_name_class/contact_name_class.dart';

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
