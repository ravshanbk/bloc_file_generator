import 'dart:io';

import '../../extentions/capitalize_string.dart';

void createPage({required String label, required String packageName}) {
  var name = label.capitalize();

  var content = """
  
import 'package:$packageName/features/$label/presentation/blocs/$label/${label}_bloc.dart';
import 'package:$packageName/features/$label/presentation/widgets/${label}_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';


class ${name}Screen extends StatefulWidget {
  const ${name}Screen({Key? key}) : super(key: key);

  @override
  State<${name}Screen> createState() => _${name}ScreenState();
}

class _${name}ScreenState extends State<${name}Screen> {
  late ${name}Bloc ${label}Bloc ;
  @override
  void initState() { 
    super.initState();
    ${label}Bloc = ${name}Bloc();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('$name'),
      ),
      body: BlocBuilder<${name}Bloc, ${name}State>(
        builder: (context, state) {
          if (state.status.isInProgress) {
            return const Center(
              child: CupertinoActivityIndicator(),
            );
          }
          if (state.labels.isEmpty) {
            return const Center(
              child: Text('No items'),
            );
          }
          return ListView.separated(
            itemBuilder: (context, index) {
              return   ${name}Item(title: '$label \$index');
            },
            separatorBuilder: (context, index) {
              return const SizedBox(height: 16);
            },
            itemCount: state.labels.length,
          );
        },
      ),
    );
  }
}

    """;

  File('lib/features/$label/presentation/${label}_screen.dart').create(recursive: true).then((File file) async {
    await file.writeAsString(content);
  });
}
