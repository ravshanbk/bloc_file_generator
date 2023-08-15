import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:bloc_file_generator/features/news_model/data/models/news_model_model.dart';


class NewsModelEntity extends Equatable {
  
  final int id; final String title; final String titleEn; final String titleRu; final String titleUz; final String message; final String messageEn; final String messageRu; final String messageUz; final String addTime; final int image; 

  const NewsModelEntity({
    
    this.id = -1, this.title = '', this.titleEn = '', this.titleRu = '', this.titleUz = '', this.message = '', this.messageEn = '', this.messageRu = '', this.messageUz = '', this.addTime = '', this.image = 0, 
    
    
  });

  @override
  List<Object?> get props => [
      id, title, titleEn, titleRu, titleUz, message, messageEn, messageRu, messageUz, addTime, image, 
      ];
}

class NewsModelConverter
    implements JsonConverter<NewsModelEntity, Map<String, dynamic>> {
  const NewsModelConverter();

  @override
  NewsModelEntity fromJson(Map<String, dynamic> json) =>
      NewsModelModel.fromJson(json);

  @override
  Map<String, dynamic> toJson(NewsModelEntity object) => {};
}

    