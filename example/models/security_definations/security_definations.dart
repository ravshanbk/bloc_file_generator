import '../swagger_model.dart';
import 'basic/basic.dart';

class SecurityDefinitions {
  final Basic basic;

  SecurityDefinitions({
    required this.basic,
  });

  factory SecurityDefinitions.fromJson(Map<String, dynamic> json) => SecurityDefinitions(
        basic: Basic.fromJson(json['Basic']),
      );

  Map<String, dynamic> toJson() => {
        'Basic': basic.toJson(),
      };
}
