part of 'login_cubit.dart';

enum AuthStatus { unknow, authenticated, unauthenticated}

class LoginState {
  final AuthStatus status;

  const LoginState._({this.status = AuthStatus.unknow});

  const LoginState.authenticated()
  :this._(
    status: AuthStatus.authenticated,
    );

  const LoginState.unauthenticated()
    :this._(
      status: AuthStatus.unauthenticated,
      );

      @override
      List<Object?> get props =>[status];
  
}