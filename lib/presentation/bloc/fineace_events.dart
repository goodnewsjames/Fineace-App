part of 'fineace_bloc.dart';

sealed class FineaceEvent {}
class FineaceLoginEvent extends FineaceEvent {
  final String email;
  final String password;

  FineaceLoginEvent({required this.email, required this.password});
}
class FineaceRegisterEvent extends FineaceEvent {
  final String email;
  final String password;

  FineaceRegisterEvent({required this.email, required this.password});
}