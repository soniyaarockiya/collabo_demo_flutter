import 'package:flutter/material.dart';
import 'package:collabo_demo_flutter/sub_widgets/roundButtons.dart';
import 'package:collabo_demo_flutter/constants/ui_constants.dart';

class LoginPage extends StatefulWidget {
  static const id = 'login_screen';

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).copyWith().size.height / 4,
                child: Image.network(
                  'https://4.bp.blogspot.com/-rtNRVM3aIvI/XJX_U07Z-II/AAAAAAAAJXY/YpdOo490FTgdKOxM4qDG-2-EzcNFAWkKACK4BGAYYCw/s1600/logo%2Bfirebase%2Bicon.png',
                ),
              ),
              kSizedBoxHeight,
              RoundedButton(
                onPressed: null,
                color: Colors.blue,
                title: 'Google',
                buttonIcon: Icons.check_circle,
              ),
              RoundedButton(
                onPressed: null,
                color: Colors.green,
                title: 'Phone',
                buttonIcon: Icons.phone,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
