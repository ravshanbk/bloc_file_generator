import 'dart:io';

import '../../extentions/capitalize_string.dart';

void createPagesDirectory({required String label, required String packageName}) {
  var name = label.capitalize();

  File('lib/features/$label/presentation/pages/${label}_page.dart').create(recursive: true).then((File file) async {});
}
