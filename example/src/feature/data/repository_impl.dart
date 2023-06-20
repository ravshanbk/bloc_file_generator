
import 'dart:io';

import '../../extentions/capitalize_string.dart';

void createRepositoryImpl({required String label, required String packageName}) {
  var name = label.capitalize();

  var content = """ 

import 'package:$packageName/core/exceptions/exceptions.dart';
import 'package:$packageName/core/exceptions/failures.dart';
import 'package:$packageName/core/utils/either.dart';
import 'package:$packageName/features/ads/data/datasource/announcements_datasource.dart';
import 'package:$packageName/features/ads/domain/entities/announcement_entity.dart'; 



class ${name}RepositoryImpl implements ${name}Repository {
  final ${name}DataSource ${name}DataSource;

  ${name}RepositoryImpl({required this.announcementsDataSource});

  @override
  Future<Either<Failure, List<${name}Entity>>> get${name}s({
  String? next,
}) async {
  try {
    var result = await ${name}DataSource.get${name}s( 
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

  File('lib/features/$label/data/repositories/${label}_repository_impl.dart').create(recursive: true).then((File file) async {
    await file.writeAsString(content);
  });
}
