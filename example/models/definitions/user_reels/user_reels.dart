import '../../swagger_model.dart';
import 'user_reels_properties/user_reels_properties.dart';

class UserReels {
  final String type;
  final UserReelsProperties properties;

  UserReels({
    required this.type,
    required this.properties,
  });

  factory UserReels.fromJson(Map<String, dynamic> json) => UserReels(
        type: json['type'],
        properties: UserReelsProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'type': type,
        'properties': properties.toJson(),
      };
}
