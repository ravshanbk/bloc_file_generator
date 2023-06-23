import '../../swagger_model.dart';
import 'project_social_auths_properties/project_social_auths_properties.dart';

class ProjectSocialAuths {
  final List<String> required;
  final String type;
  final ProjectSocialAuthsProperties properties;

  ProjectSocialAuths({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory ProjectSocialAuths.fromJson(Map<String, dynamic> json) => ProjectSocialAuths(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: ProjectSocialAuthsProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}
