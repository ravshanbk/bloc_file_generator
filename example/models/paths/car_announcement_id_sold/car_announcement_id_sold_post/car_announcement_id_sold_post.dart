import '../../../swagger_model.dart';
import 'sticky_responses/sticky_responses.dart';

class CarAnnouncementIdSoldPost {
  final String operationId;
  final String description;
  final List<dynamic> parameters;
  final StickyResponses responses;
  final List<String> tags;

  CarAnnouncementIdSoldPost({
    required this.operationId,
    required this.description,
    required this.parameters,
    required this.responses,
    required this.tags,
  });

  factory CarAnnouncementIdSoldPost.fromJson(Map<String, dynamic> json) => CarAnnouncementIdSoldPost(
        operationId: json['operationId'],
        description: json['description'],
        parameters: List<dynamic>.from(json['parameters'].map((x) => x)),
        responses: StickyResponses.fromJson(json['responses']),
        tags: List<String>.from(json['tags'].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        'operationId': operationId,
        'description': description,
        'parameters': List<dynamic>.from(parameters.map((x) => x)),
        'responses': responses.toJson(),
        'tags': List<dynamic>.from(tags.map((x) => x)),
      };
}
