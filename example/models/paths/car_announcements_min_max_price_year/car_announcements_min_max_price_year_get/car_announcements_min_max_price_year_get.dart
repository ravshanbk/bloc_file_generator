import '../../../swagger_model.dart';
import '../../car_announcement_counter/car_annoucement_counter_get/car_place_category_list_parametr/car_place_category_list_parametr.dart';
import 'indigo_responses/indigo_responses.dart';

class CarAnnouncementsMinMaxPriceYearGet {
  final String operationId;
  final String description;
  final List<CarPlaceCategoryListParameter> parameters;
  final IndigoResponses responses;
  final List<String> tags;

  CarAnnouncementsMinMaxPriceYearGet({
    required this.operationId,
    required this.description,
    required this.parameters,
    required this.responses,
    required this.tags,
  });

  factory CarAnnouncementsMinMaxPriceYearGet.fromJson(Map<String, dynamic> json) => CarAnnouncementsMinMaxPriceYearGet(
        operationId: json['operationId'],
        description: json['description'],
        parameters: List<CarPlaceCategoryListParameter>.from(
            json['parameters'].map((x) => CarPlaceCategoryListParameter.fromJson(x))),
        responses: IndigoResponses.fromJson(json['responses']),
        tags: List<String>.from(json['tags'].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        'operationId': operationId,
        'description': description,
        'parameters': List<dynamic>.from(parameters.map((x) => x.toJson())),
        'responses': responses.toJson(),
        'tags': List<dynamic>.from(tags.map((x) => x)),
      };
}
