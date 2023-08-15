
import 'package:dio/dio.dart'; 
import 'package:json_annotation/json_annotation.dart'; 
import 'package:bloc_file_generator/features/charge_point/domain/entities/charge_point_entity.dart';

part 'charge_point_model.g.dart';

 


@JsonSerializable(fieldRename: FieldRename.snake)
class ChargePointModel extends ChargePointEntity {
  const ChargePointModel({
    
    super.id, super.model, super.vendor, super.serialNumber, super.firmware, super.type, super.lastHeartbeat, super.bootTimestamp, super.identity, super.connected, super.status, super.connectors, super.isFavorite, 
  });

  factory ChargePointModel.fromJson(Map<String, dynamic> json) =>
      _$ChargePointModelFromJson(json);

  Map<String, dynamic> toJson() => _$ChargePointToJson(this);
}

    