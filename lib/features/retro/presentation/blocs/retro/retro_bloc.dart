import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart'; 
import 'package:yosh_liderlar_hub/features/retro/data/repositories/retro_repository_impl.dart';
import 'package:yosh_liderlar_hub/core/data/singletons/service_locator.dart';
import 'package:yosh_liderlar_hub/features/retro/domain/entities/retro_entity.dart';
import 'package:yosh_liderlar_hub/features/retro/domain/use_cases/retro_usecase.dart';

part 'retro_event.dart';
part 'retro_state.dart';

class RetroBloc
    extends Bloc<RetroEvent, RetroState> {
  final RetroUseCase retroUseCase =
      RetroUseCase(
          retroRepository: serviceLocator<RetroRepositoryImpl>());
  RetroBloc() : super(const RetroState()) {
    on<RetroGetEvent>((event, emit) async {
      emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
      final result = await retroUseCase( );
      if (result.isRight) {
        emit(state.copyWith(
          status: FormzSubmissionStatus.success,
          retros: result.right.results,
          next: result.right.next,
          hasFetchMore: result.right.next != null,
        ));
      } else {
        emit(state.copyWith(status: FormzSubmissionStatus.failure));
      }
    });
  }
}


    