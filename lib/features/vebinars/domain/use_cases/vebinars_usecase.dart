import 'package:yosh_liderlar_hub/core/exceptions/failures.dart';
import 'package:yosh_liderlar_hub/core/usecases/usecase.dart';
import 'package:yosh_liderlar_hub/core/utils/either.dart';
import 'package:yosh_liderlar_hub/features/vebinars/domain/repositories/vebinars_repository.dart'; 
import 'package:yosh_liderlar_hub/features/vebinars/domain/entities/vebinars_entity.dart'; 
import 'package:yosh_liderlar_hub/features/pagination/data/models/generic_pagination.dart';

class VebinarsUseCase implements UseCase<GenericPagination<VebinarsEntity>, String?> {
  final VebinarsRepository vebinarsRepository;
VebinarsUseCase({
    required this.vebinarsRepository,
  });

  @override
  Future<Either<Failure, GenericPagination<VebinarsEntity>>> call(String? params) async {
    return await vebinarsRepository.getVebinarss(next:params);
  }
}

    