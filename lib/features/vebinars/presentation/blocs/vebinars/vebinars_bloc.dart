import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart'; 
import 'package:yosh_liderlar_hub/features/vebinars/data/repositories/vebinars_repository_impl.dart';
import 'package:yosh_liderlar_hub/core/data/singletons/service_locator.dart';
import 'package:yosh_liderlar_hub/features/vebinars/domain/entities/vebinars_entity.dart';
import 'package:yosh_liderlar_hub/features/vebinars/domain/use_cases/vebinars_usecase.dart';

part 'vebinars_event.dart';
part 'vebinars_state.dart';

class VebinarsBloc
    extends Bloc<VebinarsEvent, VebinarsState> {
  final VebinarsUseCase vebinarsUseCase =
      VebinarsUseCase(
          vebinarsRepository: serviceLocator<VebinarsRepositoryImpl>());
  VebinarsBloc() : super(const VebinarsState()) {
    on<VebinarsGetEvent>((event, emit) async {
      emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
      final result = await vebinarsUseCase( );
      if (result.isRight) {
        emit(state.copyWith(
          status: FormzSubmissionStatus.success,
          vebinarss: result.right.results,
          next: result.right.next,
          hasFetchMore: result.right.next != null,
        ));
      } else {
        emit(state.copyWith(status: FormzSubmissionStatus.failure));
      }
    });
  }
}


    