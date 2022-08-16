import 'package:flutter/material.dart';

import '../shared/theme.dart';

class CustomButton extends StatefulWidget {
  final String text;
  final EdgeInsets margin;

  const CustomButton({
    Key? key,
    required this.text,
    this.margin = EdgeInsets.zero,
  }) : super(key: key);

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  Color backgroundColor = kPrimaryColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: widget.margin,
      height: 55,
      width: double.infinity,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: kPrimaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              8,
            ),
          ),
        ),
        child: Text(
          widget.text,
          style: whiteTextStyle.copyWith(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.27,
          ),
        ),
      ),
    );
  }
}
