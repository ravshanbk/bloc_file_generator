import 'package:yosh_liderlar_hub/core/exceptions/failures.dart';
import 'package:yosh_liderlar_hub/core/utils/either.dart';
import 'package:yosh_liderlar_hub/features/retro/domain/entities/retro_entity.dart'; 
import 'package:yosh_liderlar_hub/features/pagination/data/models/generic_pagination.dart';

abstract class RetroRepository {


  Future<Either<Failure, GenericPagination<RetroEntity>>> getRetros({required String? next});
}


    