import '../../../car_announcement_verify_owner_id_delete/delete/delete_responses/the_204/the_204.dart';

class StickyResponses {
  final The204 the201;

  StickyResponses({
    required this.the201,
  });

  factory StickyResponses.fromJson(Map<String, dynamic> json) => StickyResponses(
        the201: The204.fromJson(json['201']),
      );

  Map<String, dynamic> toJson() => {
        '201': the201.toJson(),
      };
}
