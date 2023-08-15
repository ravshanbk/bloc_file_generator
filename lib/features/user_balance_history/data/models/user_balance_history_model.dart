
import 'package:dio/dio.dart'; 
import 'package:json_annotation/json_annotation.dart'; 
import 'package:bloc_file_generator/features/user_balance_history/domain/entities/user_balance_history_entity.dart';

part 'user_balance_history_model.g.dart';

 


@JsonSerializable(fieldRename: FieldRename.snake)
class UserBalanceHistoryModel extends UserBalanceHistoryEntity {
  const UserBalanceHistoryModel({
    
    super.id, super.operation, super.amount, super.title, super.createdAt, super.logo, 
  });

  factory UserBalanceHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$UserBalanceHistoryModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserBalanceHistoryToJson(this);
}

    