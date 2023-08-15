import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:bloc_file_generator/features/notification_model/data/models/notification_model_model.dart';


class NotificationModelEntity extends Equatable {
  
  final int id; final String title; final String titleEn; final String titleRu; final String titleUz; final String message; final String messageEn; final String messageRu; final String messageUz; final String addTime; final bool forceOpen; final List users; 

  const NotificationModelEntity({
    
    this.id = -1, this.title = '', this.titleEn = '', this.titleRu = '', this.titleUz = '', this.message = '', this.messageEn = '', this.messageRu = '', this.messageUz = '', this.addTime = '', this.forceOpen = false, this.users = const [], 
    
    
  });

  @override
  List<Object?> get props => [
      id, title, titleEn, titleRu, titleUz, message, messageEn, messageRu, messageUz, addTime, forceOpen, users, 
      ];
}

class NotificationModelConverter
    implements JsonConverter<NotificationModelEntity, Map<String, dynamic>> {
  const NotificationModelConverter();

  @override
  NotificationModelEntity fromJson(Map<String, dynamic> json) =>
      NotificationModelModel.fromJson(json);

  @override
  Map<String, dynamic> toJson(NotificationModelEntity object) => {};
}

    