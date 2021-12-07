import 'package:flutter/material.dart';

class IconToggleButton extends StatelessWidget {
  final bool isSelected;
  final Function onPressed;
  IconToggleButton(this.isSelected, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: IconButton(
            iconSize: 30.0,
            onPressed: () {
              onPressed();
            },
            padding: EdgeInsets.all(5),
            icon: Padding(
              padding: EdgeInsets.zero,
              child: isSelected == true
                  ? const Text('follow')
                  : const Text('follow'),
            )));
  }
}
