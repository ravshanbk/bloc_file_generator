import 'dart:io';

import '../core/extentions/on_string.dart';
import 'feature/data/data_source.dart';
import 'feature/data/model.dart';
import 'feature/data/repository_impl.dart';
import 'feature/domain/entity.dart';
import 'feature/domain/repository.dart';
import 'feature/domain/use_case.dart';
import 'feature/presentation/bloc/create_bloc.dart';
import 'feature/presentation/page.dart';
import 'feature/presentation/pages.dart';
import 'feature/presentation/widgets.dart';

void main() {
  var current = Directory.current;
  var packageName = current.path.split('\\').toList().last;
  print('Enter the feature name:');
  var label = stdin.readLineSync();
  label = label?.deCapitalize();
  label = label?.replaceAll(' ', '');

  packageName = 'yosh_liderlar_hub';
  // print('the package name: $packageName');
  // generator.createFiles(packageName: packageName  );
  if (label != null && label.isNotEmpty) {
    /// data
    createDataSource(label: label, packageName: packageName);
    createModel(label: label, packageName: packageName);
    createRepositoryImpl(label: label, packageName: packageName);

    /// domain
    createRepository(label: label, packageName: packageName);
    createEntity(label: label, packageName: packageName);
    createUseCase(label: label, packageName: packageName);

    /// presentation
    createBloc(label: label, packageName: packageName);
    createPage(label: label, packageName: packageName);
    createPagesDirectory(label: label, packageName: packageName);
    createWidgetsDirectory(label: label, packageName: packageName);
  } else {
    print('You did not enter the label !!!');
  }
}
