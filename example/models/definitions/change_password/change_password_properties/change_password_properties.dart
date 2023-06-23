import '../../car_place_category/car_place_category_properties/contact_name_class/contact_name_class.dart';

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
