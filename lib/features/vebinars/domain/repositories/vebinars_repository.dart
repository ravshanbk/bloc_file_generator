import 'package:yosh_liderlar_hub/core/exceptions/failures.dart';
import 'package:yosh_liderlar_hub/core/utils/either.dart';
import 'package:yosh_liderlar_hub/features/vebinars/domain/entities/vebinars_entity.dart'; 
import 'package:yosh_liderlar_hub/features/pagination/data/models/generic_pagination.dart';

abstract class VebinarsRepository {


  Future<Either<Failure, GenericPagination<VebinarsEntity>>> getVebinarss({required String? next});
}


    