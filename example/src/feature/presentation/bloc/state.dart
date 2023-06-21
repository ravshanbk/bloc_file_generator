import 'dart:io';

import '../../../extentions/capitalize_string.dart';

void state({required String label, required String packageName}) {
  var name = label.capitalize();

  var content = """
   part of '${label}_bloc.dart';

class ${name}State extends Equatable {
  final FormzSubmissionStatus status;
  final List<${name}Entity> ${label}s;
  final String next;
  final bool hasFetchMore;
  const ${name}State({
    this.status = FormzSubmissionStatus.initial,
    this.${label}s = const [],
    this.next = '',
    this.hasFetchMore = false,
    
  });
  @override
  List<Object?> get props => [status, ${label}s,next,hasFetchMore,];

  ${name}State copyWith({
  String? next,
  bool? hasFetchMore,
    FormzSubmissionStatus? status,
    List<${name}Entity>? ${label}s,
  }) {
    return ${name}State(
      status: status ?? this.status,
      hasFetchMore: hasFetchMore ?? this.hasFetchMore,
      next: next ?? this.next,
      ${label}s: ${label}s ?? this.${label}s,
    );
  }
}

    """;

  File('lib/features/$label/presentation/blocs/$label/${label}_state.dart')
      .create(recursive: true)
      .then((File file) async {
    await file.writeAsString(content);
  });
}
