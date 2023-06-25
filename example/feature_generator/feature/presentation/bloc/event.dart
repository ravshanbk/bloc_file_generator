import 'dart:io';

import '../../../../core/extentions/on_string.dart';

void event({required String label, required String packageName}) {
  var name = label.capitalize();

  var content = """
   part of '${label}_bloc.dart'; 

abstract class ${name}Event {}

class ${name}GetEvent extends ${name}Event {
  final int id;
  ${name}GetEvent({
    required this.id,
  });
}
    """;

  File('lib/features/$label/presentation/blocs/$label/${label}_event.dart')
      .create(recursive: true)
      .then((File file) async {
    await file.writeAsString(content);
  });
}
