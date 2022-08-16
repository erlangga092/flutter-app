import 'package:flutter/material.dart';

import '../shared/theme.dart';

class CustomTextFormField extends StatelessWidget {
  final String label;
  final String hintText;
  final bool obsecure;

  const CustomTextFormField({
    Key? key,
    required this.label,
    required this.hintText,
    this.obsecure = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: blackTextStyle.copyWith(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.18,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            obscureText: obsecure,
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
                  color: kBorderColor,
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
        ],
      ),
    );
  }
}
