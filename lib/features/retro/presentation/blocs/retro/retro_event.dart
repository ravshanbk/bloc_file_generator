   part of 'retro_bloc.dart'; 

abstract class RetroEvent {}

class RetroGetEvent extends RetroEvent {
  final int id;
  RetroGetEvent({
    required this.id,
  });
}
    