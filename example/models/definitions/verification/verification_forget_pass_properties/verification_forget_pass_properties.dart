import '../../car_place_category/car_place_category_properties/contact_name_class/contact_name_class.dart';

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
