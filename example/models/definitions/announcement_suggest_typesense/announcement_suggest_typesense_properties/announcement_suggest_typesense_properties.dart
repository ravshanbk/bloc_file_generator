import '../../../swagger_model.dart';
import 'results/results.dart';

class AnnouncementSuggestTypesenseProperties {
  final Results results;

  AnnouncementSuggestTypesenseProperties({
    required this.results,
  });

  factory AnnouncementSuggestTypesenseProperties.fromJson(Map<String, dynamic> json) =>
      AnnouncementSuggestTypesenseProperties(
        results: Results.fromJson(json['results']),
      );

  Map<String, dynamic> toJson() => {
        'results': results.toJson(),
      };
}
