import 'dart:io';

import '../../../extentions/capitalize_string.dart';

void state({required String label, required String packageName}) {
  var name = label.capitalize();

  var content = """
   part of '${label}_bloc.dart';

class ${name}State extends Equatable {
  final FormzSubmissionStatus status;
  final List<${name}Entity> ${label}s;
  const ${name}State({
    this.status = FormzSubmissionStatus.initial,
    this.${label}s = const [],
  });
  @override
  List<Object?> get props => [status, ${label}s];

  ${name}sState copyWith({
    FormzSubmissionStatus? status,
    List<${name}Entity>? ${label}s,
  }) {
    return SingleBuyAnnouncementState(
      status: status ?? this.status,
      ${label}s: ${label}s ?? this.${label}s,
    );
  }
}

    """;

  File('lib/features/$label/presentation/bloc/$label/${label}_state.dart')
      .create(recursive: true)
      .then((File file) async {
    await file.writeAsString(content);
  });
}
