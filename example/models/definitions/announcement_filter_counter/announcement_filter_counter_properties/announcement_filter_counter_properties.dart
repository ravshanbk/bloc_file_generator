import '../../product/product_properties/body_type/body_type.dart';

class AnnouncementFilterCounterProperties {
  final BodyType count;

  AnnouncementFilterCounterProperties({
    required this.count,
  });

  factory AnnouncementFilterCounterProperties.fromJson(Map<String, dynamic> json) =>
      AnnouncementFilterCounterProperties(
        count: BodyType.fromJson(json['count']),
      );

  Map<String, dynamic> toJson() => {
        'count': count.toJson(),
      };
}
