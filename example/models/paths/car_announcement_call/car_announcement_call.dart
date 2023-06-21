import '../../swagger_model.dart';
import '../car_announcement_counter/car_annoucement_counter_get/car_place_category_list_parametr/car_place_category_list_parametr.dart';
import 'car_announcement_call_post/car_announcement_call_post.dart';

class CarAnnouncementCall {
  final CarAnnouncementCallPost post;
  final List<CarPlaceCategoryListParameter> parameters;

  CarAnnouncementCall({
    required this.post,
    required this.parameters,
  });

  factory CarAnnouncementCall.fromJson(Map<String, dynamic> json) => CarAnnouncementCall(
        post: CarAnnouncementCallPost.fromJson(json['post']),
        parameters: List<CarPlaceCategoryListParameter>.from(
            json['parameters'].map((x) => CarPlaceCategoryListParameter.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        'post': post.toJson(),
        'parameters': List<dynamic>.from(parameters.map((x) => x.toJson())),
      };
}
