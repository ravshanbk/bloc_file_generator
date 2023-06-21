import '../../../../swagger_model.dart';
import 'purple_200/purple_200.dart';

class PurpleResponses {
  final Purple200 the200;

  PurpleResponses({
    required this.the200,
  });

  factory PurpleResponses.fromJson(Map<String, dynamic> json) => PurpleResponses(
    the200: Purple200.fromJson(json['200']),
  );

  Map<String, dynamic> toJson() => {
    '200': the200.toJson(),
  };
}
