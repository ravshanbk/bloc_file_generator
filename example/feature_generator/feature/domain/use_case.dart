import 'dart:io';

import '../../../core/extentions/on_string.dart';

void createUseCase({required String label, required String packageName}) {
  var name = label.capitalize();

  var content = """ 
import 'package:$packageName/core/exceptions/failures.dart';
import 'package:$packageName/core/usecases/usecase.dart';
import 'package:$packageName/core/utils/either.dart';
import 'package:$packageName/features/$label/domain/repositories/${label}_repository.dart'; 
import 'package:$packageName/features/$label/domain/entities/${label}_entity.dart'; 
import 'package:$packageName/features/pagination/data/models/generic_pagination.dart';

class ${name}UseCase implements UseCase<GenericPagination<${name}Entity>, String?> {
  final ${name}Repository ${label}Repository;
${name}UseCase({
    required this.${label}Repository,
  });

  @override
  Future<Either<Failure, GenericPagination<${name}Entity>>> call(String? params) async {
    return await ${label}Repository.get${name}s(next:params);
  }
}

    """;

  File('lib/features/$label/domain/use_cases/${label}_usecase.dart').create(recursive: true).then((File file) async {
    await file.writeAsString(content);
  });
}
