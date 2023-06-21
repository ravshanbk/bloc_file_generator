import '../../car_announcement_counter/car_annoucement_counter_get/car_place_category_list_parametr/car_place_category_list_parametr.dart';
import '../../car_place_category_list/car_place_category_list_get/purple_responses/purple_responses.dart';

class CarPlaceListGet {
  final String operationId;
  final String description;
  final List<CarPlaceCategoryListParameter> parameters;
  final PurpleResponses responses;
  final List<String> tags;
  final String? summary;

  CarPlaceListGet({
    required this.operationId,
    required this.description,
    required this.parameters,
    required this.responses,
    required this.tags,
    this.summary,
  });

  factory CarPlaceListGet.fromJson(Map<String, dynamic> json) => CarPlaceListGet(
    operationId: json['operationId'],
    description: json['description'],
    parameters: List<CarPlaceCategoryListParameter>.from(
        json['parameters'].map((x) => CarPlaceCategoryListParameter.fromJson(x))),
    responses: PurpleResponses.fromJson(json['responses']),
    tags: List<String>.from(json['tags'].map((x) => x)),
    summary: json['summary'],
  );

  Map<String, dynamic> toJson() => {
    'operationId': operationId,
    'description': description,
    'parameters': List<dynamic>.from(parameters.map((x) => x.toJson())),
    'responses': responses.toJson(),
    'tags': List<dynamic>.from(tags.map((x) => x)),
    'summary': summary,
  };
}
