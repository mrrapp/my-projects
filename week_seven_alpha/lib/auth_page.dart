import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:week_seven_alpha/login_widget.dart';

import 'signup_widget.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool isLogin = true;

  @override
  Widget build(BuildContext context) =>
      isLogin ? LoginWidget(onClickedSignUp: toggle,) 
      : SignUpWidget(onClickedSignIn: toggle);

      void toggle()=> setState(() => isLogin = !isLogin);
}
