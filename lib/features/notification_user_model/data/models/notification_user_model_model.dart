
import 'package:dio/dio.dart'; 
import 'package:json_annotation/json_annotation.dart'; 
import 'package:bloc_file_generator/features/notification_user_model/domain/entities/notification_user_model_entity.dart';

part 'notification_user_model_model.g.dart';

 


@JsonSerializable(fieldRename: FieldRename.snake)
class NotificationUserModelModel extends NotificationUserModelEntity {
  const NotificationUserModelModel({
    
    super.id, super.seenTime, super.user, super.notification, 
  });

  factory NotificationUserModelModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationUserModelModelFromJson(json);

  Map<String, dynamic> toJson() => _$NotificationUserModelToJson(this);
}

    