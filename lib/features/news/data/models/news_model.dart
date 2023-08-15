
import 'package:dio/dio.dart'; 
import 'package:json_annotation/json_annotation.dart'; 
import 'package:bloc_file_generator/features/news/domain/entities/news_entity.dart';

part 'news_model.g.dart';

 


@JsonSerializable(fieldRename: FieldRename.snake)
class NewsModel extends NewsEntity {
  const NewsModel({
    
    super.id, super.title, super.message, super.addTime, super.image, super.imageUrl, 
  });

  factory NewsModel.fromJson(Map<String, dynamic> json) =>
      _$NewsModelFromJson(json);

  Map<String, dynamic> toJson() => _$NewsToJson(this);
}

    