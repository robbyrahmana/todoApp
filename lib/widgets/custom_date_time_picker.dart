import 'package:flutter/material.dart';

class CustomDateTimePicker extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData iconData;
  final String value;

  CustomDateTimePicker(
      {@required this.onPressed,
      @required this.iconData,
      @required this.value});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.only(left: 12.0),
        child: Row(
          children: <Widget>[
            Icon(iconData, color: Theme.of(context).accentColor, size: 30),
            SizedBox(
              width: 12,
            ),
            Text(
              value,
              style: TextStyle(fontSize: 14),
            )
          ],
        ),
      ),
    );
  }
}
