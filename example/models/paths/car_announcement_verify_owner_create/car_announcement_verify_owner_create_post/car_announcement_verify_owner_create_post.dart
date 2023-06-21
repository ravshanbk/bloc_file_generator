import '../../car_announcement_call/car_announcement_call_post/tentacled_responses/tentacled_responses.dart';
import '../../car_announcement_counter/car_annoucement_counter_get/car_place_category_list_parametr/car_place_category_list_parametr.dart';

class CarAnnouncementVerifyOwnerCreatePost {
  final String operationId;
  final String description;
  final List<CarPlaceCategoryListParameter> parameters;
  final TentacledResponses responses;
  final List<String> consumes;
  final List<String> tags;

  CarAnnouncementVerifyOwnerCreatePost({
    required this.operationId,
    required this.description,
    required this.parameters,
    required this.responses,
    required this.consumes,
    required this.tags,
  });

  factory CarAnnouncementVerifyOwnerCreatePost.fromJson(Map<String, dynamic> json) =>
      CarAnnouncementVerifyOwnerCreatePost(
        operationId: json['operationId'],
        description: json['description'],
        parameters: List<CarPlaceCategoryListParameter>.from(
            json['parameters'].map((x) => CarPlaceCategoryListParameter.fromJson(x))),
        responses: TentacledResponses.fromJson(json['responses']),
        consumes: List<String>.from(json['consumes'].map((x) => x)),
        tags: List<String>.from(json['tags'].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        'operationId': operationId,
        'description': description,
        'parameters': List<dynamic>.from(parameters.map((x) => x.toJson())),
        'responses': responses.toJson(),
        'consumes': List<dynamic>.from(consumes.map((x) => x)),
        'tags': List<dynamic>.from(tags.map((x) => x)),
      };
}
