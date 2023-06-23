import '../../swagger_model.dart';
import 'dealer_markers__properties/dealer_markers__properties.dart';

class DealerMarks {
  final List<String> required;
  final String type;
  final DealerMarksProperties properties;

  DealerMarks({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory DealerMarks.fromJson(Map<String, dynamic> json) => DealerMarks(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: DealerMarksProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}
