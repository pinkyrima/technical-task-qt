import 'package:flutter/material.dart';
import 'package:qtechtask/src/style/k_color.dart';
import 'package:qtechtask/src/style/k_textStyle.dart';

class KButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;

  const KButton({
    Key? key,
    required this.buttonText,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 50,
        width: double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            primary: KColor.primary,
          ),
          onPressed: onPressed,
          child: Text(
            buttonText,
            style: KTextStyle.bodyText,
          ),
        ));
  }
}
