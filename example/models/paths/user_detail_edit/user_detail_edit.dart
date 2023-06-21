import '../car_place_slug/path_class/path_class.dart';

class UsersDetailEdit {
  final PatchClass put;
  final PatchClass patch;
  final List<dynamic> parameters;

  UsersDetailEdit({
    required this.put,
    required this.patch,
    required this.parameters,
  });

  factory UsersDetailEdit.fromJson(Map<String, dynamic> json) => UsersDetailEdit(
        put: PatchClass.fromJson(json['put']),
        patch: PatchClass.fromJson(json['patch']),
        parameters: List<dynamic>.from(json['parameters'].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        'put': put.toJson(),
        'patch': patch.toJson(),
        'parameters': List<dynamic>.from(parameters.map((x) => x)),
      };
}
