
import 'package:dio/dio.dart';
import 'package:bloc_file_generator/core/exceptions/exceptions.dart';
import 'package:bloc_file_generator/core/singletons/storage/storage.dart';
import 'package:bloc_file_generator/core/utils/my_functions.dart';
import 'package:bloc_file_generator/features/ads/data/models/announcement_model.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:bloc_file_generator/features/ads/domain/entities/category_entity.dart';

part 'label_model.g.dart';

 


@JsonSerializable(fieldRename: FieldRename.snake)
class LabelModel extends LabelEntity {
  const LabelModel({
     super.id,
     super.name, 
  });

  factory LabelModel.fromJson(Map<String, dynamic> json) =>
      _$LabelModelFromJson(json);

  Map<String, dynamic> toJson() => _$LabelToJson(this);
}

    