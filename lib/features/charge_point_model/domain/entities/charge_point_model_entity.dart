import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:bloc_file_generator/features/charge_point_model/data/models/charge_point_model_model.dart';


class ChargePointModelEntity extends Equatable {
  
  final int id; final String model; final String vendor; final String serialNumber; final String firmware; final String type; final String lastHeartbeat; final String bootTimestamp; final String identity; final bool connected; final bool status; final int address; 

  const ChargePointModelEntity({
    
    this.id = -1, this.model = '', this.vendor = '', this.serialNumber = '', this.firmware = '', this.type = '', this.lastHeartbeat = '', this.bootTimestamp = '', this.identity = '', this.connected = false, this.status = false, this.address = 0, 
    
    
  });

  @override
  List<Object?> get props => [
      id, model, vendor, serialNumber, firmware, type, lastHeartbeat, bootTimestamp, identity, connected, status, address, 
      ];
}

class ChargePointModelConverter
    implements JsonConverter<ChargePointModelEntity, Map<String, dynamic>> {
  const ChargePointModelConverter();

  @override
  ChargePointModelEntity fromJson(Map<String, dynamic> json) =>
      ChargePointModelModel.fromJson(json);

  @override
  Map<String, dynamic> toJson(ChargePointModelEntity object) => {};
}

    