import '../../product/product_properties/body_type/body_type.dart';

class AnnouncementOwnerDetailProperties {
  final BodyType user;
  final BodyType announcement;

  AnnouncementOwnerDetailProperties({
    required this.user,
    required this.announcement,
  });

  factory AnnouncementOwnerDetailProperties.fromJson(Map<String, dynamic> json) => AnnouncementOwnerDetailProperties(
        user: BodyType.fromJson(json['user']),
        announcement: BodyType.fromJson(json['announcement']),
      );

  Map<String, dynamic> toJson() => {
        'user': user.toJson(),
        'announcement': announcement.toJson(),
      };
}
