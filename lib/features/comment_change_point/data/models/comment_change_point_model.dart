
import 'package:dio/dio.dart'; 
import 'package:json_annotation/json_annotation.dart'; 
import 'package:bloc_file_generator/features/comment_change_point/domain/entities/comment_change_point_entity.dart';

part 'comment_change_point_model.g.dart';

 


@JsonSerializable(fieldRename: FieldRename.snake)
class CommentChangePointModel extends CommentChangePointEntity {
  const CommentChangePointModel({
    
    super.id, super.content, super.date, super.user, super.userName, super.owner, 
  });

  factory CommentChangePointModel.fromJson(Map<String, dynamic> json) =>
      _$CommentChangePointModelFromJson(json);

  Map<String, dynamic> toJson() => _$CommentChangePointToJson(this);
}

    