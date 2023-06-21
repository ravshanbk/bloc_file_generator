import '../../../car_announcement_verify_owner_id_delete/delete/delete_responses/the_204/the_204.dart';

class IndigoResponses {
  final The204 the200;

  IndigoResponses({
    required this.the200,
  });

  factory IndigoResponses.fromJson(Map<String, dynamic> json) => IndigoResponses(
        the200: The204.fromJson(json['200']),
      );

  Map<String, dynamic> toJson() => {
        '200': the200.toJson(),
      };
}
