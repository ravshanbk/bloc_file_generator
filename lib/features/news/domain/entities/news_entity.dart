import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:bloc_file_generator/features/news/data/models/news_model.dart';


class NewsEntity extends Equatable {
  
  final int id; final String title; final String message; final String addTime; final int image; final String imageUrl; 

  const NewsEntity({
    
    this.id = -1, this.title = '', this.message = '', this.addTime = '', this.image = 0, this.imageUrl = '', 
    
    
  });

  @override
  List<Object?> get props => [
      id, title, message, addTime, image, imageUrl, 
      ];
}

class NewsConverter
    implements JsonConverter<NewsEntity, Map<String, dynamic>> {
  const NewsConverter();

  @override
  NewsEntity fromJson(Map<String, dynamic> json) =>
      NewsModel.fromJson(json);

  @override
  Map<String, dynamic> toJson(NewsEntity object) => {};
}

    