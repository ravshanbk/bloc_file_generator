   part of 'vebinars_bloc.dart';

class VebinarsState extends Equatable {
  final FormzSubmissionStatus status;
  final List<VebinarsEntity> vebinarss;
  final String next;
  final bool hasFetchMore;
  const VebinarsState({
    this.status = FormzSubmissionStatus.initial,
    this.vebinarss = const [],
    this.next = '',
    this.hasFetchMore = false,
    
  });
  @override
  List<Object?> get props => [status, vebinarss,next,hasFetchMore,];

  VebinarsState copyWith({
  String? next,
  bool? hasFetchMore,
    FormzSubmissionStatus? status,
    List<VebinarsEntity>? vebinarss,
  }) {
    return VebinarsState(
      status: status ?? this.status,
      hasFetchMore: hasFetchMore ?? this.hasFetchMore,
      next: next ?? this.next,
      vebinarss: vebinarss ?? this.vebinarss,
    );
  }
}

    