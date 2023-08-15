
import 'package:dio/dio.dart'; 
import 'package:json_annotation/json_annotation.dart'; 
import 'package:bloc_file_generator/features/token_refresh/domain/entities/token_refresh_entity.dart';

part 'token_refresh_model.g.dart';

 


@JsonSerializable(fieldRename: FieldRename.snake)
class TokenRefreshModel extends TokenRefreshEntity {
  const TokenRefreshModel({
    
    super.refresh, super.access, 
  });

  factory TokenRefreshModel.fromJson(Map<String, dynamic> json) =>
      _$TokenRefreshModelFromJson(json);

  Map<String, dynamic> toJson() => _$TokenRefreshToJson(this);
}

    