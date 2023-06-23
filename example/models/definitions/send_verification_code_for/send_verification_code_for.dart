import '../../swagger_model.dart';
import 'send_verification_code_for_announcement_properties/send_verification_code_for_announcement_properties.dart';

class SendVerificationCodeFor {
  final List<String> required;
  final String type;
  final SendVerificationCodeForAnnouncementProperties properties;

  SendVerificationCodeFor({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory SendVerificationCodeFor.fromJson(Map<String, dynamic> json) => SendVerificationCodeFor(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: SendVerificationCodeForAnnouncementProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}
