import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:bloc_file_generator/features/type_connection/data/models/type_connection_model.dart';


class TypeConnectionEntity extends Equatable {
  
  final int id; final String name; 

  const TypeConnectionEntity({
    
    this.id = -1, this.name = '', 
    
    
  });

  @override
  List<Object?> get props => [
      id, name, 
      ];
}

class TypeConnectionConverter
    implements JsonConverter<TypeConnectionEntity, Map<String, dynamic>> {
  const TypeConnectionConverter();

  @override
  TypeConnectionEntity fromJson(Map<String, dynamic> json) =>
      TypeConnectionModel.fromJson(json);

  @override
  Map<String, dynamic> toJson(TypeConnectionEntity object) => {};
}

    