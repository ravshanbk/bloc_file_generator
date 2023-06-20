import 'dart:io';

import '../../extentions/capitalize_string.dart';

void createUseCase({required String label, required String packageName}) {
  var name = label.capitalize();

  var content = """ 
import 'package:$packageName/core/exceptions/failures.dart';
import 'package:$packageName/core/usecases/usecase.dart';
import 'package:$packageName/core/utils/either.dart';
import 'package:$packageName/features/$label/domain/repositories/${label}_repository.dart';

class ${name}UseCase implements UseCase<GenericPagination<${name}Entity>, String?> {
  final ${name}Repository ${label}Repository;
${name}UseCase({
    required this.${label}Repository,
  });

  @override
  Future<Either<Failure, void>> call(String params) async {
    return await ${label}Repository.get${name}s(params);
  }
}

    """;

  File('lib/features/$label/domain/use_cases/${label}_use_case.dart').create(recursive: true).then((File file) async {
    await file.writeAsString(content);
  });
}
