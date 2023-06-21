import '../../../car_place_slug/path_class/patch_responses/the_201_class/the_201_class.dart';

class TentacledResponses {
  final The201Class the201;

  TentacledResponses({
    required this.the201,
  });

  factory TentacledResponses.fromJson(Map<String, dynamic> json) => TentacledResponses(
    the201: The201Class.fromJson(json['201']),
  );

  Map<String, dynamic> toJson() => {
    '201': the201.toJson(),
  };
}

