import '../../../../../swagger_model.dart';
import 'fluffy_200/fluffy_200.dart';

class FluffyResponses {
  final Fluffy200 the200;

  FluffyResponses({
    required this.the200,
  });

  factory FluffyResponses.fromJson(Map<String, dynamic> json) => FluffyResponses(
    the200: Fluffy200.fromJson(json['200']),
  );

  Map<String, dynamic> toJson() => {
    '200': the200.toJson(),
  };
}
