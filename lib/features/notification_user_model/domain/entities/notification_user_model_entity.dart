import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:bloc_file_generator/features/notification_user_model/data/models/notification_user_model_model.dart';


class NotificationUserModelEntity extends Equatable {
  
  final int id; final String seenTime; final int user; final int notification; 

  const NotificationUserModelEntity({
    
    this.id = -1, this.seenTime = '', this.user = 0, this.notification = 0, 
    
    
  });

  @override
  List<Object?> get props => [
      id, seenTime, user, notification, 
      ];
}

class NotificationUserModelConverter
    implements JsonConverter<NotificationUserModelEntity, Map<String, dynamic>> {
  const NotificationUserModelConverter();

  @override
  NotificationUserModelEntity fromJson(Map<String, dynamic> json) =>
      NotificationUserModelModel.fromJson(json);

  @override
  Map<String, dynamic> toJson(NotificationUserModelEntity object) => {};
}

    