import 'dart:io';

import '../../../../core/extentions/on_string.dart';

void bloc({required String label, required String packageName}) {
  var name = label.capitalize();

  var content = """ 
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart'; 
import 'package:$packageName/features/$label/data/repositories/${label}_repository_impl.dart';
import 'package:$packageName/core/data/singletons/service_locator.dart';
import 'package:$packageName/features/$label/domain/entities/${label}_entity.dart';
import 'package:$packageName/features/$label/domain/use_cases/${label}_usecase.dart';

part '${label}_event.dart';
part '${label}_state.dart';

class ${name}Bloc
    extends Bloc<${name}Event, ${name}State> {
  final ${name}UseCase ${label}UseCase =
      ${name}UseCase(
          ${label}Repository: serviceLocator<${name}RepositoryImpl>());
  ${name}Bloc() : super(const ${name}State()) {
    on<${name}GetEvent>((event, emit) async {
      emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
      final result = await ${label}UseCase( );
      if (result.isRight) {
        emit(state.copyWith(
          status: FormzSubmissionStatus.success,
          ${label}s: result.right.results,
          next: result.right.next,
          hasFetchMore: result.right.next != null,
        ));
      } else {
        emit(state.copyWith(status: FormzSubmissionStatus.failure));
      }
    });
  }
}


    """;

  File('lib/features/$label/presentation/blocs/$label/${label}_bloc.dart')
      .create(recursive: true)
      .then((File file) async {
    await file.writeAsString(content);
  });
}
