
import 'package:yosh_liderlar_hub/core/exceptions/exceptions.dart';
import 'package:yosh_liderlar_hub/core/exceptions/failures.dart';
import 'package:yosh_liderlar_hub/core/utils/either.dart';
import 'package:yosh_liderlar_hub/features/vebinars/data/data_sources/vebinars_datasource.dart';
import 'package:yosh_liderlar_hub/features/vebinars/domain/entities/vebinars_entity.dart'; 
import 'package:yosh_liderlar_hub/features/vebinars/domain/repositories/vebinars_repository.dart'; 
import 'package:yosh_liderlar_hub/features/pagination/data/models/generic_pagination.dart'; 



class VebinarsRepositoryImpl implements VebinarsRepository {
  final VebinarsDataSource vebinarsDataSource;

  VebinarsRepositoryImpl({required this.vebinarsDataSource});

  @override
  Future<Either<Failure, GenericPagination<VebinarsEntity>>> getVebinarss({
  String? next,
}) async {
  try {
    var result = await vebinarsDataSource.getVebinarss( 
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
    