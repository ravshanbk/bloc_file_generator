import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:bloc_file_generator/features/token_refresh/data/models/token_refresh_model.dart';


class TokenRefreshEntity extends Equatable {
  
  final String refresh; final String access; 

  const TokenRefreshEntity({
    
    this.refresh = '', this.access = '', 
    
    
  });

  @override
  List<Object?> get props => [
      refresh, access, 
      ];
}

class TokenRefreshConverter
    implements JsonConverter<TokenRefreshEntity, Map<String, dynamic>> {
  const TokenRefreshConverter();

  @override
  TokenRefreshEntity fromJson(Map<String, dynamic> json) =>
      TokenRefreshModel.fromJson(json);

  @override
  Map<String, dynamic> toJson(TokenRefreshEntity object) => {};
}

    