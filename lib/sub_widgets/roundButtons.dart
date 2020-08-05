import 'package:flutter/material.dart';
import 'package:collabo_demo_flutter/constants/ui_constants.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton(
      {this.middleText,
      this.color,
      @required this.onPressed,
      this.buttonIcon1,
      this.buttonIcon2,
      this.onIconPress1,
      this.onIconPress2});

  final String middleText;
  final Function onPressed;
  final Color color;
  final IconData buttonIcon1;
  final IconData buttonIcon2;
  final Function onIconPress1;
  final Function onIconPress2;

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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: IconButton(
                  icon: Icon(buttonIcon1),
                  onPressed: onIconPress1,
                ),
              ),
              kSizedBoxWidth,
              Expanded(
                child: Text(
                  middleText,
                  style: kRoundedButtonTextStyle,
                ),
              ),
              Expanded(
                child: IconButton(
                  icon: Icon(buttonIcon2),
                  onPressed: onIconPress2,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
