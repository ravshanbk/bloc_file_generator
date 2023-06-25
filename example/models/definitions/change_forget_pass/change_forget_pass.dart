import 'change_forget_pass_properties/change_forget_pass_properties.dart';

class ChangeForgetPass {
  final List<String> required;
  final String type;
  final ChangeForgetPassProperties properties;

  ChangeForgetPass({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory ChangeForgetPass.fromJson(Map<String, dynamic> json) => ChangeForgetPass(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: ChangeForgetPassProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}
