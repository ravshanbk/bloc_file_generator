
import 'package:dio/dio.dart'; 
import 'package:json_annotation/json_annotation.dart'; 
import 'package:bloc_file_generator/features/notification_model/domain/entities/notification_model_entity.dart';

part 'notification_model_model.g.dart';

 


@JsonSerializable(fieldRename: FieldRename.snake)
class NotificationModelModel extends NotificationModelEntity {
  const NotificationModelModel({
    
    super.id, super.title, super.titleEn, super.titleRu, super.titleUz, super.message, super.messageEn, super.messageRu, super.messageUz, super.addTime, super.forceOpen, super.users, 
  });

  factory NotificationModelModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationModelModelFromJson(json);

  Map<String, dynamic> toJson() => _$NotificationModelToJson(this);
}

    