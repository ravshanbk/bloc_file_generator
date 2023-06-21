import '../../../../swagger_model.dart';
import 'the_201_class/the_201_class.dart';

class PatchResponses {
  final The201Class the200;

  PatchResponses({
    required this.the200,
  });

  factory PatchResponses.fromJson(Map<String, dynamic> json) => PatchResponses(
    the200: The201Class.fromJson(json['200']),
  );

  Map<String, dynamic> toJson() => {
    '200': the200.toJson(),
  };
}
