import '../car_announcement_counter/car_annoucement_counter_get/car_place_category_list_parametr/car_place_category_list_parametr.dart';
import 'delete/delete.dart';

class CarAnnouncementVerifyOwnerIdDelete {
  final Delete delete;
  final List<CarPlaceCategoryListParameter> parameters;

  CarAnnouncementVerifyOwnerIdDelete({
    required this.delete,
    required this.parameters,
  });

  factory CarAnnouncementVerifyOwnerIdDelete.fromJson(Map<String, dynamic> json) => CarAnnouncementVerifyOwnerIdDelete(
        delete: Delete.fromJson(json['delete']),
        parameters: List<CarPlaceCategoryListParameter>.from(
            json['parameters'].map((x) => CarPlaceCategoryListParameter.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        'delete': delete.toJson(),
        'parameters': List<dynamic>.from(parameters.map((x) => x.toJson())),
      };
}
