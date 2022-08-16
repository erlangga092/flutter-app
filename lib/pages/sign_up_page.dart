import 'package:flutter/material.dart';
import 'package:latihan_bloc/components/custom_button.dart';
import 'package:latihan_bloc/components/custom_text_form_field.dart';
import 'package:latihan_bloc/components/custom_text_form_field_item.dart';

import '../shared/theme.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: const EdgeInsets.only(
          top: 30,
          left: 30,
          right: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Create Your Account',
              style: blackTextStyle.copyWith(
                fontWeight: FontWeight.w600,
                fontSize: 18,
                letterSpacing: 0.27,
              ),
            ),
            Text(
              'Create your account to start journey',
              style: greyTextStyle.copyWith(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                letterSpacing: 0.18,
              ),
            )
          ],
        ),
      );
    }

    Widget welcomeImage() {
      return Container(
        margin: const EdgeInsets.symmetric(
          vertical: 40,
          horizontal: 30,
        ),
        width: 221,
        height: 221,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/sign-up-icon.png',
            ),
          ),
        ),
      );
    }

    Widget inputSection() {
      Widget fullNameInput() {
        return Container(
          margin: const EdgeInsets.only(
            bottom: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Full Name',
                style: blackTextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.18,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: const [
                  CustomTextFormFieldItem(
                    hintText: "First Name",
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  CustomTextFormFieldItem(
                    hintText: "Last Name",
                  ),
                ],
              )
            ],
          ),
        );
      }

      Widget linkSignIn() {
        return Center(
          child: Container(
            width: double.infinity,
            margin: const EdgeInsets.only(
              bottom: 68,
              left: 30,
              right: 30,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have account?',
                  style: greyTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  'Sign In',
                  style: blueTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        );
      }

      return Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 30,
        ),
        child: Column(
          children: [
            fullNameInput(),
            const CustomTextFormField(
              label: "Email",
              hintText: "Enter your email",
            ),
            const CustomTextFormField(
              label: "Password",
              hintText: "Enter your password",
              obsecure: true,
            ),
            const CustomButton(
              text: "Create Account",
              margin: EdgeInsets.only(
                top: 10,
                bottom: 20,
              ),
            ),
            linkSignIn(),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: ListView(
            children: [
              header(),
              welcomeImage(),
              inputSection(),
            ],
          ),
        ),
      ),
    );
  }
}
