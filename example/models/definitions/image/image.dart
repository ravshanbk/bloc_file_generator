import '../../swagger_model.dart';
import 'default_class/default_class.dart';

class Image {
  final String type;
  final DefaultClass properties;

  Image({
    required this.type,
    required this.properties,
  });

  factory Image.fromJson(Map<String, dynamic> json) => Image(
        type: json['type'],
        properties: DefaultClass.fromJson(json['properties']),
      );

  Map<String, dynamic> toJson() => {
        'type': type,
        'properties': properties.toJson(),
      };
}
