import '../../../swagger_model.dart';
import 'ids_list/ids_list.dart';

class UserFilterHistoryDeleteProperties {
  final IdsList idsList;

  UserFilterHistoryDeleteProperties({
    required this.idsList,
  });

  factory UserFilterHistoryDeleteProperties.fromJson(Map<String, dynamic> json) => UserFilterHistoryDeleteProperties(
        idsList: IdsList.fromJson(json['ids_list']),
      );

  Map<String, dynamic> toJson() => {
        'ids_list': idsList.toJson(),
      };
}
