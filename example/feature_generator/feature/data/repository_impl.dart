import 'dart:io';

import '../../../core/extentions/on_string.dart';

void createRepositoryImpl({required String label, required String packageName}) {
  var name = label.capitalize();

  var content = """ 

import 'package:$packageName/core/exceptions/exceptions.dart';
import 'package:$packageName/core/exceptions/failures.dart';
import 'package:$packageName/core/utils/either.dart';
import 'package:$packageName/features/$label/data/data_sources/${label}_datasource.dart';
import 'package:$packageName/features/$label/domain/entities/${label}_entity.dart'; 
import 'package:$packageName/features/$label/domain/repositories/${label}_repository.dart'; 
import 'package:$packageName/features/pagination/data/models/generic_pagination.dart'; 



class ${name}RepositoryImpl implements ${name}Repository {
  final ${name}DataSource ${label}DataSource;

  ${name}RepositoryImpl({required this.${label}DataSource});

  @override
  Future<Either<Failure, GenericPagination<${name}Entity>>> get${name}s({
  String? next,
}) async {
  try {
    var result = await ${label}DataSource.get${name}s( 
      next: next,
    );
    return Right(result);
  } on DioException {
    return Left(DioFailure());
  } on ParsingException catch (e) {
    print('fetchBuyAnnouncementsList parsing error: \$e');
    return Left(ParsingFailure(errorMessage: e.errorMessage));
  } on ServerException catch (e) {
    print('fetchBuyAnnouncementsList ServerException error: \$e');
    return Left(ServerFailure(errorMessage: e.errorMessage, statusCode: e.statusCode));
  } catch (e) {
    print('fetchBuyAnnouncementsList other error: \$e');
    return Left(Failure(errorMessage: e.toString()));
  }
}


}
    """;

  File('lib/features/$label/data/repositories/${label}_repository_impl.dart')
      .create(recursive: true)
      .then((File file) async {
    await file.writeAsString(content);
  });
}
