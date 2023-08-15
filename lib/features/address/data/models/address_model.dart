
import 'package:dio/dio.dart'; 
import 'package:json_annotation/json_annotation.dart'; 
import 'package:bloc_file_generator/features/address/domain/entities/address_entity.dart';

part 'address_model.g.dart';

 


@JsonSerializable(fieldRename: FieldRename.snake)
class AddressModel extends AddressEntity {
  const AddressModel({
    
    super.id, super.region, super.regionName, super.name, super.address, super.landmark, super.longitude, super.latitude, super.chargePoints, 
  });

  factory AddressModel.fromJson(Map<String, dynamic> json) =>
      _$AddressModelFromJson(json);

  Map<String, dynamic> toJson() => _$AddressToJson(this);
}

    