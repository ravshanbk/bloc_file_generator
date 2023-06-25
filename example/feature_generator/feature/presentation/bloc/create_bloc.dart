import 'bloc.dart';
import 'event.dart';
import 'state.dart';

void createBloc({required String label, required String packageName}) {
  bloc(label: label, packageName: packageName);
  state(label: label, packageName: packageName);
  event(label: label, packageName: packageName);
}
