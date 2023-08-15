import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:bloc_file_generator/features/user_balance_history/data/models/user_balance_history_model.dart';


class UserBalanceHistoryEntity extends Equatable {
  
  final int id; final int operation; final num amount; final String title; final String createdAt; final String logo; 

  const UserBalanceHistoryEntity({
    
    this.id = -1, this.operation = 0, this.amount = 0, this.title = '', this.createdAt = '', this.logo = '', 
    
    
  });

  @override
  List<Object?> get props => [
      id, operation, amount, title, createdAt, logo, 
      ];
}

class UserBalanceHistoryConverter
    implements JsonConverter<UserBalanceHistoryEntity, Map<String, dynamic>> {
  const UserBalanceHistoryConverter();

  @override
  UserBalanceHistoryEntity fromJson(Map<String, dynamic> json) =>
      UserBalanceHistoryModel.fromJson(json);

  @override
  Map<String, dynamic> toJson(UserBalanceHistoryEntity object) => {};
}

    