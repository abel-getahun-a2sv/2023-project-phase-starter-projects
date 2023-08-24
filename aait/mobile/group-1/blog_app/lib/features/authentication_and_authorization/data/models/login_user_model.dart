import 'package:blog_app/features/authentication_and_authorization/domain/entities/login_user_entitiy.dart';


class LoginUserModel extends LoginUserEnity {
  const LoginUserModel(
      {
      required email,
      required password,
})
      : super(

            password: password,

            email: email);
  Map<String, dynamic> toJson() {
    return {
      "email": email,
      "password": password,

    };
  }
}


