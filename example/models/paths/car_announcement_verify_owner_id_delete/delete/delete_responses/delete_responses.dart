import '../../../../swagger_model.dart';
import 'the_204/the_204.dart';

class DeleteResponses {
  final The204 the204;

  DeleteResponses({
    required this.the204,
  });

  factory DeleteResponses.fromJson(Map<String, dynamic> json) => DeleteResponses(
        the204: The204.fromJson(json['204']),
      );

  Map<String, dynamic> toJson() => {
        '204': the204.toJson(),
      };
}
