import 'package:ForDev/domain/entities/account_entity.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

abstract class Authentication {
  Future<AccountEntity> auth(AuthenticationParams params);
}

class AuthenticationParams extends Equatable {
  final String email;
  final String secret;

  List get props => [email, secret];

  AuthenticationParams({@required this.email, @required this.secret});
}
