import 'get_last_transaction_status_properties/get_last_transaction_status_properties.dart';

class GetLastTransactionStatus {
  final List<String> required;
  final String type;
  final GetLastTransactionStatusProperties properties;

  GetLastTransactionStatus({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory GetLastTransactionStatus.fromJson(Map<String, dynamic> json) => GetLastTransactionStatus(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: GetLastTransactionStatusProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}
