import 'package:flutter/material.dart';
import 'package:collabo_demo_flutter/constants/ui_constants.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton(
      {this.title, this.color, @required this.onPressed, this.buttonIcon});

  final String title;
  final Function onPressed;
  final Color color;
  final IconData buttonIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: color,
        borderRadius: BorderRadius.circular(35.0),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: MediaQuery.of(context).copyWith().size.width / 30,
          height: MediaQuery.of(context).copyWith().size.height / 10,
          child: Row(
            children: <Widget>[
              Icon(
                buttonIcon,
              ),
              kSizedBoxWidth,
              Text(
                title,
                style: kRoundedButtonTextStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
