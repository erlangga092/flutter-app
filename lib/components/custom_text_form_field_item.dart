import 'package:flutter/material.dart';

import '../shared/theme.dart';

class CustomTextFormFieldItem extends StatelessWidget {
  final String hintText;

  const CustomTextFormFieldItem({
    Key? key,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: TextFormField(
        textAlignVertical: TextAlignVertical.center,
        cursorColor: kBlackColor,
        style: blackTextStyle.copyWith(
          fontSize: 12,
          fontWeight: FontWeight.normal,
        ),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: hintTextStyle.copyWith(
            fontSize: 12,
            fontWeight: FontWeight.normal,
            letterSpacing: 0.18,
          ),
          contentPadding: const EdgeInsets.symmetric(
            vertical: 11,
            horizontal: 16,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              8,
            ),
            borderSide: BorderSide(
              color: kBorderColor,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              8,
            ),
            borderSide: BorderSide(
              color: kPrimaryColor,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              8,
            ),
            borderSide: BorderSide(
              color: kPrimaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
