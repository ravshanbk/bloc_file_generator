import '../../../swagger_model.dart';
import 'patch_parametr/patch_parametr.dart';
import 'patch_responses/patch_responses.dart';

class PatchClass {
  final String operationId;
  final String description;
  final List<PatchParameter> parameters;
  final PatchResponses responses;
  final List<String> tags;
  final List<String>? consumes;

  PatchClass({
    required this.operationId,
    required this.description,
    required this.parameters,
    required this.responses,
    required this.tags,
    this.consumes,
  });

  factory PatchClass.fromJson(Map<String, dynamic> json) => PatchClass(
        operationId: json['operationId'],
        description: json['description'],
        parameters: List<PatchParameter>.from(json['parameters'].map((x) => PatchParameter.fromJson(x))),
        responses: PatchResponses.fromJson(json['responses']),
        tags: List<String>.from(json['tags'].map((x) => x)),
        consumes: json['consumes'] == null ? [] : List<String>.from(json['consumes']!.map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        'operationId': operationId,
        'description': description,
        'parameters': List<dynamic>.from(parameters.map((x) => x.toJson())),
        'responses': responses.toJson(),
        'tags': List<dynamic>.from(tags.map((x) => x)),
        'consumes': consumes == null ? [] : List<dynamic>.from(consumes!.map((x) => x)),
      };
}
