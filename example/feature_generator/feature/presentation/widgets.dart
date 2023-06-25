import 'dart:io';

import '../../../core/extentions/on_string.dart';

void createWidgetsDirectory({required String label, required String packageName}) {
  var name = label.capitalize();
  var content = """
  import 'package:flutter/material.dart';

class ${name}Item extends StatelessWidget {
  final String title;

  const ${name}Item({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.teal.withOpacity(.3),
      ),
      child: Center(
        child: Text(title),
      ),
    );
  }
}

    """;

  File('lib/features/$label/presentation/widgets/${label}_item.dart').create(recursive: true).then((File file) async {
    await file.writeAsString(content);
  });
}
