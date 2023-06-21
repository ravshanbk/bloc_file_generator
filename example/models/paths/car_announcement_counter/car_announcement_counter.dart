import '../../swagger_model.dart';
import 'car_annoucement_counter_get/car_announcement_get.dart';

class CarAnnouncementCounter {
  final CarAnnouncementCounterGet carAnnouncementCounterGet;
  final List<dynamic> parameters;

  CarAnnouncementCounter({
    required this.carAnnouncementCounterGet,
    required this.parameters,
  });

  factory CarAnnouncementCounter.fromJson(Map<String, dynamic> json) => CarAnnouncementCounter(
        carAnnouncementCounterGet: CarAnnouncementCounterGet.fromJson(json['get']),
        parameters: List<dynamic>.from(json['parameters'].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        'get': carAnnouncementCounterGet.toJson(),
        'parameters': List<dynamic>.from(parameters.map((x) => x)),
      };
}
