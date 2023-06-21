import '../../../swagger_model.dart';
import '../../car_announcement_counter/car_annoucement_counter_get/car_place_category_list_parametr/car_place_category_list_parametr.dart';
import 'delete_responses/delete_responses.dart';

class Delete {
  final String operationId;
  final String description;
  final List<CarPlaceCategoryListParameter> parameters;
  final DeleteResponses responses;
  final List<String> tags;

  Delete({
    required this.operationId,
    required this.description,
    required this.parameters,
    required this.responses,
    required this.tags,
  });

  factory Delete.fromJson(Map<String, dynamic> json) => Delete(
        operationId: json['operationId'],
        description: json['description'],
        parameters: List<CarPlaceCategoryListParameter>.from(
            json['parameters'].map((x) => CarPlaceCategoryListParameter.fromJson(x))),
        responses: DeleteResponses.fromJson(json['responses']),
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
