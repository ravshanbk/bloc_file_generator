import '../car_announcement_counter/car_annoucement_counter_get/car_place_category_list_parametr/car_place_category_list_parametr.dart';
import '../car_place_slug/path_class/path_class.dart';

class CarAnnouncementIdDetail {
  final PatchClass carAnnouncementIdDetailGet;
  final List<CarPlaceCategoryListParameter> parameters;

  CarAnnouncementIdDetail({
    required this.carAnnouncementIdDetailGet,
    required this.parameters,
  });

  factory CarAnnouncementIdDetail.fromJson(Map<String, dynamic> json) => CarAnnouncementIdDetail(
        carAnnouncementIdDetailGet: PatchClass.fromJson(json['get']),
        parameters: List<CarPlaceCategoryListParameter>.from(
            json['parameters'].map((x) => CarPlaceCategoryListParameter.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        'get': carAnnouncementIdDetailGet.toJson(),
        'parameters': List<dynamic>.from(parameters.map((x) => x.toJson())),
      };
}
