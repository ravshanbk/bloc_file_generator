import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:bloc_file_generator/features/address/data/models/address_model.dart';


class AddressEntity extends Equatable {
  
  final int id; final int region; final String regionName; final String name; final String address; final String landmark; final String longitude; final String latitude; final String chargePoints; 

  const AddressEntity({
    
    this.id = -1, this.region = 0, this.regionName = '', this.name = '', this.address = '', this.landmark = '', this.longitude = '', this.latitude = '', this.chargePoints = '', 
    
    
  });

  @override
  List<Object?> get props => [
      id, region, regionName, name, address, landmark, longitude, latitude, chargePoints, 
      ];
}

class AddressConverter
    implements JsonConverter<AddressEntity, Map<String, dynamic>> {
  const AddressConverter();

  @override
  AddressEntity fromJson(Map<String, dynamic> json) =>
      AddressModel.fromJson(json);

  @override
  Map<String, dynamic> toJson(AddressEntity object) => {};
}

    