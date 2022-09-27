import 'package:flutter/material.dart';
import 'package:qtechtask/src/style/k_color.dart';

class KTextField extends StatefulWidget {
  final String hintText;
  final double size;
  final IconData? icon;
  final bool isPasswordField;
  final TextEditingController? controller;
  final bool obSecureText;
  final TextInputType type;
  final TextAlign align;

  const KTextField({
    Key? key,
    required this.hintText,
    this.icon,
    this.isPasswordField = false,
    this.controller,
    this.obSecureText = false,
    this.size = 50,
    this.type = TextInputType.text,
    this.align = TextAlign.start,
  }) : super(key: key);

  @override
  _KTextFieldState createState() => _KTextFieldState();
}

class _KTextFieldState extends State<KTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.size,
      decoration: BoxDecoration(
          //border: Border.all(color: KColor.solitude),
          color: Colors.white,
          borderRadius: BorderRadius.circular(15)),
      child: Center(
        child: TextField(
          keyboardType: widget.type,
          controller: widget.controller,
          obscureText: widget.hintText == 'Password' ? true : false,
          textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
            suffixIcon: Icon(
              widget.icon,
              color: KColor.primary,
            ),
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(25)),
            hintText: widget.hintText,
            contentPadding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
            //hintStyle: KTextStyle.bodyText.copyWith(color: KColor.grayish),
          ),
        ),
      ),
    );
  }
}
