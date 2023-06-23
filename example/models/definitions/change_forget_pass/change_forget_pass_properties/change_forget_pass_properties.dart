import '../../car_place_category/car_place_category_properties/contact_name_class/contact_name_class.dart';

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
