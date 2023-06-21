import '../../swagger_model.dart';
import '../car_announcement_counter/car_annoucement_counter_get/car_place_category_list_parametr/car_place_category_list_parametr.dart';
import 'car_announcement_id_sold_post/car_announcement_id_sold_post.dart';

class CarAnnouncementIdSold {
  final CarAnnouncementIdSoldPost post;
  final List<CarPlaceCategoryListParameter> parameters;

  CarAnnouncementIdSold({
    required this.post,
    required this.parameters,
  });

  factory CarAnnouncementIdSold.fromJson(Map<String, dynamic> json) => CarAnnouncementIdSold(
        post: CarAnnouncementIdSoldPost.fromJson(json['post']),
        parameters: List<CarPlaceCategoryListParameter>.from(
            json['parameters'].map((x) => CarPlaceCategoryListParameter.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        'post': post.toJson(),
        'parameters': List<dynamic>.from(parameters.map((x) => x.toJson())),
      };
}
