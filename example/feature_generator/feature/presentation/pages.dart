import 'dart:io';

import '../../../core/extentions/on_string.dart';

void createPagesDirectory({required String label, required String packageName}) {
  var name = label.capitalize();

  File('lib/features/$label/presentation/pages/${label}_page.dart').create(recursive: true).then((File file) async {});
}
