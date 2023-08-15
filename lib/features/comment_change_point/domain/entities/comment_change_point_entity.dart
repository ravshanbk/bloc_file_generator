import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:bloc_file_generator/features/comment_change_point/data/models/comment_change_point_model.dart';


class CommentChangePointEntity extends Equatable {
  
  final int id; final String content; final String date; final int user; final String userName; final String owner; 

  const CommentChangePointEntity({
    
    this.id = -1, this.content = '', this.date = '', this.user = 0, this.userName = '', this.owner = '', 
    
    
  });

  @override
  List<Object?> get props => [
      id, content, date, user, userName, owner, 
      ];
}

class CommentChangePointConverter
    implements JsonConverter<CommentChangePointEntity, Map<String, dynamic>> {
  const CommentChangePointConverter();

  @override
  CommentChangePointEntity fromJson(Map<String, dynamic> json) =>
      CommentChangePointModel.fromJson(json);

  @override
  Map<String, dynamic> toJson(CommentChangePointEntity object) => {};
}

    