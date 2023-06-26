
import 'package:yosh_liderlar_hub/core/exceptions/exceptions.dart';
import 'package:yosh_liderlar_hub/core/exceptions/failures.dart';
import 'package:yosh_liderlar_hub/core/utils/either.dart';
import 'package:yosh_liderlar_hub/features/retro/data/data_sources/retro_datasource.dart';
import 'package:yosh_liderlar_hub/features/retro/domain/entities/retro_entity.dart'; 
import 'package:yosh_liderlar_hub/features/retro/domain/repositories/retro_repository.dart'; 
import 'package:yosh_liderlar_hub/features/pagination/data/models/generic_pagination.dart'; 



class RetroRepositoryImpl implements RetroRepository {
  final RetroDataSource retroDataSource;

  RetroRepositoryImpl({required this.retroDataSource});

  @override
  Future<Either<Failure, GenericPagination<RetroEntity>>> getRetros({
  String? next,
}) async {
  try {
    var result = await retroDataSource.getRetros( 
      next: next,
    );
    return Right(result);
  } on DioException {
    return Left(DioFailure());
  } on ParsingException catch (e) {
    print('fetchBuyAnnouncementsList parsing error: $e');
    return Left(ParsingFailure(errorMessage: e.errorMessage));
  } on ServerException catch (e) {
    print('fetchBuyAnnouncementsList ServerException error: $e');
    return Left(ServerFailure(errorMessage: e.errorMessage, statusCode: e.statusCode));
  } catch (e) {
    print('fetchBuyAnnouncementsList other error: $e');
    return Left(Failure(errorMessage: e.toString()));
  }
}


}
    