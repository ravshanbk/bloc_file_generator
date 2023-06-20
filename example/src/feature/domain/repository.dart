import 'dart:io';

import '../../extentions/capitalize_string.dart';

void createRepository({required String label, required String packageName}) {
  var name = label.capitalize();

  var content = """ 
import 'package:shirin_meva/core/exceptions/failures.dart';
import 'package:shirin_meva/core/utils/either.dart';
import 'package:$packageName/features/$label/domain/entities/${label}_entity.dart'; 
import 'package:$packageName/features/pagination/data/models/generic_pagination.dart';

abstract class AnnouncementsRepository {


  Future<Either<Failure, GenericPagination<${label}_entity>>> get${name}s();
}


    """;

  File('lib/features/$label/domain/repositories/${label}_repository.dart')
      .create(recursive: true)
      .then((File file) async {
    await file.writeAsString(content);
  });
}
