import 'package:flutter/material.dart';
import 'package:todoApp/widgets/custom_button.dart';

class CustomModalActionButton extends StatelessWidget {
  final VoidCallback onClose;
  final VoidCallback onSave;

  CustomModalActionButton({@required this.onClose, @required this.onSave});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        CustomButton(
          onPressed: onClose,
          buttonText: "Close",
        ),
        CustomButton(
          onPressed: onSave,
          buttonText: "Save",
          color: Theme.of(context).accentColor,
          textColor: Colors.white,
        )
      ],
    );
  }
}
