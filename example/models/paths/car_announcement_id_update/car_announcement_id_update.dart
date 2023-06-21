import '../car_announcement_counter/car_annoucement_counter_get/car_place_category_list_parametr/car_place_category_list_parametr.dart';
import '../car_announcement_verify_owner_id_delete/delete/delete.dart';
import '../car_place_slug/path_class/path_class.dart';

class CarAnnouncementIdUpdate {
  final PatchClass put;
  final PatchClass patch;
  final List<CarPlaceCategoryListParameter> parameters;
  final Delete? delete;

  CarAnnouncementIdUpdate({
    required this.put,
    required this.patch,
    required this.parameters,
    this.delete,
  });

  factory CarAnnouncementIdUpdate.fromJson(Map<String, dynamic> json) => CarAnnouncementIdUpdate(
        put: PatchClass.fromJson(json['put']),
        patch: PatchClass.fromJson(json['patch']),
        parameters: List<CarPlaceCategoryListParameter>.from(
            json['parameters'].map((x) => CarPlaceCategoryListParameter.fromJson(x))),
        delete: json['delete'] == null ? null : Delete.fromJson(json['delete']),
      );

  Map<String, dynamic> toJson() => {
        'put': put.toJson(),
        'patch': patch.toJson(),
        'parameters': List<dynamic>.from(parameters.map((x) => x.toJson())),
        'delete': delete?.toJson(),
      };
}
