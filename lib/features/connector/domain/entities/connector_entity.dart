import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:bloc_file_generator/features/connector/data/models/connector_model.dart';


class ConnectorEntity extends Equatable {
  
  final int id; final String name; final int connectorId; final int chargePoint; final bool available; final bool inUse; final String price; final String powerName; final int typeConnection; final String typeConnectionName; final String icon; 

  const ConnectorEntity({
    
    this.id = -1, this.name = '', this.connectorId = 0, this.chargePoint = 0, this.available = false, this.inUse = false, this.price = '', this.powerName = '', this.typeConnection = 0, this.typeConnectionName = '', this.icon = '', 
    
    
  });

  @override
  List<Object?> get props => [
      id, name, connectorId, chargePoint, available, inUse, price, powerName, typeConnection, typeConnectionName, icon, 
      ];
}

class ConnectorConverter
    implements JsonConverter<ConnectorEntity, Map<String, dynamic>> {
  const ConnectorConverter();

  @override
  ConnectorEntity fromJson(Map<String, dynamic> json) =>
      ConnectorModel.fromJson(json);

  @override
  Map<String, dynamic> toJson(ConnectorEntity object) => {};
}

    