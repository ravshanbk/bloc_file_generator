   part of 'vebinars_bloc.dart'; 

abstract class VebinarsEvent {}

class VebinarsGetEvent extends VebinarsEvent {
  final int id;
  VebinarsGetEvent({
    required this.id,
  });
}
    