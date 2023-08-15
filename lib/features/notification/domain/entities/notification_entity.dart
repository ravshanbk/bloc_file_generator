import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:bloc_file_generator/features/notification/data/models/notification_model.dart';


class NotificationEntity extends Equatable {
  
  final int pk; final String title; final String message; final String addTime; final String seenTime; final bool forceOpen; 

  const NotificationEntity({
    
    this.pk = 0, this.title = '', this.message = '', this.addTime = '', this.seenTime = '', this.forceOpen = false, 
    
    
  });

  @override
  List<Object?> get props => [
      pk, title, message, addTime, seenTime, forceOpen, 
      ];
}

class NotificationConverter
    implements JsonConverter<NotificationEntity, Map<String, dynamic>> {
  const NotificationConverter();

  @override
  NotificationEntity fromJson(Map<String, dynamic> json) =>
      NotificationModel.fromJson(json);

  @override
  Map<String, dynamic> toJson(NotificationEntity object) => {};
}

    