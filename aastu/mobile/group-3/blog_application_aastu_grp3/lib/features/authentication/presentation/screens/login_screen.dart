
import 'package:blog_application_aastu_grp3/features/authentication/presentation/widgets/nav_image_widget.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {

  final Function toggleAuth;
  

  const Login({
    Key? key,
    required this.toggleAuth,
  }) : super(key: key);


  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(top: 54),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: NavBarImage(),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  // height: MediaQuery.of(context).size.height,
                  child: Stack(
                    clipBehavior: Clip.antiAlias,
                    children: [
                      Positioned(
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 500,
                          decoration: ShapeDecoration(
                              color: Color(0xFF376AED),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(28),
                                  topRight: Radius.circular(28),
                                ),
                              ),
                              shadows: [
                                BoxShadow(
                                  color: Colors.white,
                                  blurRadius: 22,
                                ),
                              ]),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: EdgeInsets.only(
                                    top: 20,
                                    left:
                                        MediaQuery.of(context).size.width / 6),
                                child: Text(
                                  "LOGIN",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      height: 1,
                                      fontFamily: 'Urbanist'),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                    top: 20,
                                    right:
                                        MediaQuery.of(context).size.width / 6),
                                child: GestureDetector(
                                  onTap: (){
                                    widget.toggleAuth();
                                  },
                                  child: Text(
                                    "SIGN UP",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color:
                                            Color.fromRGBO(255, 255, 255, 0.25),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700,
                                        height: 1,
                                        fontFamily: 'Urbanist'),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 64,
                        bottom: 0,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(28),
                                  topRight: Radius.circular(28),
                                ),
                              ),
                              shadows: [
                                BoxShadow(
                                  color: Color(0x194F5B79),
                                  blurRadius: 22,
                                ),
                              ]),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 40),
                                margin: EdgeInsets.only(top: 32),
                                child: Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(bottom: 12),
                                      child: Text(
                                        'Welcome back',
                                        style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        'Sign in with your account',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w900,
                                            color:
                                                Color.fromRGBO(45, 67, 121, 1)),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(40),
                                // margin: EdgeInsets.only(top: 32),
                                child: LoginForm(),
                              ),
                              Center(
                                child: Container(
                                  child: FloatingActionButton.extended(
                                    onPressed: null,
                                    backgroundColor:
                                        Color.fromRGBO(55, 106, 237, 1),
                                    label: Text(
                                      "Login",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontFamily: 'Urbanist',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    extendedPadding: EdgeInsets.only(
                                        top: 19,
                                        bottom: 19,
                                        right: 124,
                                        left: 124),
                                  ),
                                ),
                              ),
                              Center(
                                child: Container(
                                  margin: EdgeInsets.only(top: 20),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(right: 8),
                                        child: GestureDetector(
                                          child: Text(
                                            "Forgot your password?",
                                            style: TextStyle(
                                              color: Color(0xFF2D4379),
                                              fontSize: 14,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w900,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: GestureDetector(
                                          child: GestureDetector(
                                            onTap: (){
                                              
                                            },
                                            child: Text(
                                              "Reset here",
                                              style: TextStyle(
                                                color: Color(0xFF376AED),
                                                fontSize: 14,
                                                fontFamily: 'Urbanist',
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


class LoginForm extends StatefulWidget {
  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _userName = TextEditingController();
  final _password = TextEditingController();
  bool passwordVisible = true;
  String msg = "Show";

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            controller: _userName,
            style: TextStyle(
              color: Color(0xFF0D253C),
              fontSize: 16,
              fontFamily: 'Urbanist',
              fontWeight: FontWeight.w500,
            ),
            decoration: InputDecoration(
                labelText: 'Username',
                labelStyle: TextStyle(
                  color: Color(0xFF2D4379),
                  fontSize: 14,
                  fontStyle: FontStyle.italic,
                  fontFamily: 'Urbanist',
                  fontWeight: FontWeight.w100,
                )),
          ),
          TextFormField(
            obscureText: passwordVisible,
            controller: _password,
            style: TextStyle(
              color: Color(0xFF0D253C),
              fontSize: 16,
              fontFamily: 'Urbanist',
              fontWeight: FontWeight.w500,
            ),
            decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(
                  color: Color(0xFF2D4379),
                  fontSize: 14,
                  fontStyle: FontStyle.italic,
                  fontFamily: 'Urbanist',
                  fontWeight: FontWeight.w100,
                ),
                suffix: GestureDetector(
                  child: Text(msg),
                  onTap: () {
                    setState(() {
                      passwordVisible = !passwordVisible;
                    });
                    if (passwordVisible) {
                      setState(() {
                        msg = "Show";
                      });
                    } else {
                      setState(() {
                        msg = "Hide";
                      });
                    }
                  },
                )),
          )
        ],
      ),
    );
  }
}
