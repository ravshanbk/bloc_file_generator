
import 'package:dio/dio.dart'; 
import 'package:json_annotation/json_annotation.dart'; 
import 'package:bloc_file_generator/features/notification/domain/entities/notification_entity.dart';

part 'notification_model.g.dart';

 


@JsonSerializable(fieldRename: FieldRename.snake)
class NotificationModel extends NotificationEntity {
  const NotificationModel({
    
    super.pk, super.title, super.message, super.addTime, super.seenTime, super.forceOpen, 
  });

  factory NotificationModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationModelFromJson(json);

  Map<String, dynamic> toJson() => _$NotificationToJson(this);
}

    