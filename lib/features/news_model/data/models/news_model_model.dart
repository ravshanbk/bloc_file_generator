
import 'package:dio/dio.dart'; 
import 'package:json_annotation/json_annotation.dart'; 
import 'package:bloc_file_generator/features/news_model/domain/entities/news_model_entity.dart';

part 'news_model_model.g.dart';

 


@JsonSerializable(fieldRename: FieldRename.snake)
class NewsModelModel extends NewsModelEntity {
  const NewsModelModel({
    
    super.id, super.title, super.titleEn, super.titleRu, super.titleUz, super.message, super.messageEn, super.messageRu, super.messageUz, super.addTime, super.image, 
  });

  factory NewsModelModel.fromJson(Map<String, dynamic> json) =>
      _$NewsModelModelFromJson(json);

  Map<String, dynamic> toJson() => _$NewsModelToJson(this);
}

    