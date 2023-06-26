   part of 'retro_bloc.dart';

class RetroState extends Equatable {
  final FormzSubmissionStatus status;
  final List<RetroEntity> retros;
  final String next;
  final bool hasFetchMore;
  const RetroState({
    this.status = FormzSubmissionStatus.initial,
    this.retros = const [],
    this.next = '',
    this.hasFetchMore = false,
    
  });
  @override
  List<Object?> get props => [status, retros,next,hasFetchMore,];

  RetroState copyWith({
  String? next,
  bool? hasFetchMore,
    FormzSubmissionStatus? status,
    List<RetroEntity>? retros,
  }) {
    return RetroState(
      status: status ?? this.status,
      hasFetchMore: hasFetchMore ?? this.hasFetchMore,
      next: next ?? this.next,
      retros: retros ?? this.retros,
    );
  }
}

    