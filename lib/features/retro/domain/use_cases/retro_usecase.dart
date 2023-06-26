import 'package:yosh_liderlar_hub/core/exceptions/failures.dart';
import 'package:yosh_liderlar_hub/core/usecases/usecase.dart';
import 'package:yosh_liderlar_hub/core/utils/either.dart';
import 'package:yosh_liderlar_hub/features/retro/domain/repositories/retro_repository.dart'; 
import 'package:yosh_liderlar_hub/features/retro/domain/entities/retro_entity.dart'; 
import 'package:yosh_liderlar_hub/features/pagination/data/models/generic_pagination.dart';

class RetroUseCase implements UseCase<GenericPagination<RetroEntity>, String?> {
  final RetroRepository retroRepository;
RetroUseCase({
    required this.retroRepository,
  });

  @override
  Future<Either<Failure, GenericPagination<RetroEntity>>> call(String? params) async {
    return await retroRepository.getRetros(next:params);
  }
}

    