import 'dealer_reels_properties/dealer_reels_properties.dart';

class DealerReels {
  final List<String> required;
  final String type;
  final DealerReelsProperties properties;

  DealerReels({
    required this.required,
    required this.type,
    required this.properties,
  });

  factory DealerReels.fromJson(Map<String, dynamic> json) => DealerReels(
        required: List<String>.from(json['required'].map((x) => x)),
        type: json['type'],
        properties: DealerReelsProperties.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'required': List<dynamic>.from(required.map((x) => x)),
        'type': type,
        'properties': properties.toJson(),
      };
}
