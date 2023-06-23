import '../../swagger_model.dart';
import 'send_verification_code_properties/send_verification_code_properties.dart';

class SendVerificationCode {
  final List<String> required;
  final String type;
  final SendVerificationCodeProperties properties;

  SendVerificationCode({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory SendVerificationCode.fromJson(Map<String, dynamic> json) => SendVerificationCode(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: SendVerificationCodeProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}
