import '../car_announcement_call/car_announcement_call_post/car_announcement_call_post.dart';
import '../car_announcement_counter/car_annoucement_counter_get/car_announcement_get.dart';

class CarComparison {
  final CarAnnouncementCounterGet carComparisonGet;
  final CarAnnouncementCallPost post;
  final List<dynamic> parameters;

  CarComparison({
    required this.carComparisonGet,
    required this.post,
    required this.parameters,
  });

  factory CarComparison.fromJson(Map<String, dynamic> json) => CarComparison(
    carComparisonGet: CarAnnouncementCounterGet.fromJson(json['get']),
    post: CarAnnouncementCallPost.fromJson(json['post']),
    parameters: List<dynamic>.from(json['parameters'].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    'get': carComparisonGet.toJson(),
    'post': post.toJson(),
    'parameters': List<dynamic>.from(parameters.map((x) => x)),
  };
}
