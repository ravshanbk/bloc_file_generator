import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:bloc_file_generator/features/charge_point/data/models/charge_point_model.dart';


class ChargePointEntity extends Equatable {
  
  final int id; final String model; final String vendor; final String serialNumber; final String firmware; final String type; final String lastHeartbeat; final String bootTimestamp; final String identity; final bool connected; final bool status; final String connectors; final String isFavorite; 

  const ChargePointEntity({
    
    this.id = -1, this.model = '', this.vendor = '', this.serialNumber = '', this.firmware = '', this.type = '', this.lastHeartbeat = '', this.bootTimestamp = '', this.identity = '', this.connected = false, this.status = false, this.connectors = '', this.isFavorite = '', 
    
    
  });

  @override
  List<Object?> get props => [
      id, model, vendor, serialNumber, firmware, type, lastHeartbeat, bootTimestamp, identity, connected, status, connectors, isFavorite, 
      ];
}

class ChargePointConverter
    implements JsonConverter<ChargePointEntity, Map<String, dynamic>> {
  const ChargePointConverter();

  @override
  ChargePointEntity fromJson(Map<String, dynamic> json) =>
      ChargePointModel.fromJson(json);

  @override
  Map<String, dynamic> toJson(ChargePointEntity object) => {};
}

    