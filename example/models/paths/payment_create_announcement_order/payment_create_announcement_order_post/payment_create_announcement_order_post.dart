import '../../../swagger_model.dart';
import '../../car_announcement_call/car_announcement_call_post/tentacled_responses/tentacled_responses.dart';
import 'purple_parametr/purple_parametr.dart';

class PaymentCreateAnnouncementOrderPost {
  final String operationId;
  final String description;
  final List<PurpleParameter> parameters;
  final TentacledResponses responses;
  final List<String> consumes;
  final List<String> tags;

  PaymentCreateAnnouncementOrderPost({
    required this.operationId,
    required this.description,
    required this.parameters,
    required this.responses,
    required this.consumes,
    required this.tags,
  });

  factory PaymentCreateAnnouncementOrderPost.fromJson(Map<String, dynamic> json) => PaymentCreateAnnouncementOrderPost(
        operationId: json['operationId'],
        description: json['description'],
        parameters: List<PurpleParameter>.from(json['parameters'].map((x) => PurpleParameter.fromJson(x))),
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
