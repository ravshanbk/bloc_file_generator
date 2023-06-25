import '../../swagger_model.dart';
import 'user_wish_list_properties/user_wish_list_properties.dart';

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
