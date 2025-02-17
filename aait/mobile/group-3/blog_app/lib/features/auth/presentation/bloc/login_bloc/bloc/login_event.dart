part of 'login_bloc.dart';

sealed class LoginEvent extends Equatable {
  final String email, password;

  const LoginEvent({
    required this.email,
    required this.password,
  });

  @override
  List<Object> get props => [];
}
