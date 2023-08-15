import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:bloc_file_generator/features/charge_point_model/domain/entities/charge_point_model_entity.dart';

part 'charge_point_model_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class ChargePointModelModel extends ChargePointModelEntity {
  const ChargePointModelModel({
    super.id,
    super.model,
    super.vendor,
    super.serialNumber,
    super.firmware,
    super.type,
    super.lastHeartbeat,
    super.bootTimestamp,
    super.identity,
    super.connected,
    super.status,
    super.address,
  });

  factory ChargePointModelModel.fromJson(Map<String, dynamic> json) => _$ChargePointModelModelFromJson(json);

  Map<String, dynamic> toJson() => _$ChargePointModelToJson(this);
}
