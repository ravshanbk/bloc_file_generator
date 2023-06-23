import '../../swagger_model.dart';
import 'verification_forget_pass_properties/verification_forget_pass_properties.dart';

class Verification {
  final List<String> required;
  final String type;
  final VerificationForgetPassProperties properties;

  Verification({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory Verification.fromJson(Map<String, dynamic> json) => Verification(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: VerificationForgetPassProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}
