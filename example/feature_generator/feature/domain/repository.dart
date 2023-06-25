import 'dart:io';

import '../../../core/extentions/on_string.dart';

void createRepository({required String label, required String packageName}) {
  var name = label.capitalize();

  var content = """ 
import 'package:$packageName/core/exceptions/failures.dart';
import 'package:$packageName/core/utils/either.dart';
import 'package:$packageName/features/$label/domain/entities/${label}_entity.dart'; 
import 'package:$packageName/features/pagination/data/models/generic_pagination.dart';

abstract class ${name}Repository {


  Future<Either<Failure, GenericPagination<${name}Entity>>> get${name}s({required String? next});
}


    """;

  File('lib/features/$label/domain/repositories/${label}_repository.dart')
      .create(recursive: true)
      .then((File file) async {
    await file.writeAsString(content);
  });
}
