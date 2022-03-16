import 'package:chat/components/primary_button.dart';
import 'package:flutter/material.dart';

class SinginOrSignupScreen extends StatelessWidget {
  const SinginOrSignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const Spacer(flex: 2),
              Image.asset(
                MediaQuery.of(context).platformBrightness == Brightness.light
                    ? "assets/images/Logo_light.png"
                    : "assets/images/Logo_dark.png",
                height: 146,
              ),
              const Spacer(),
              PrimaryButton(
                text: "Sign In",
                press: () {},
              ),
              const SizedBox(height: 10),
              PrimaryButton(
                text: 'Sing Up',
                press: () {},
              ),
              const Spacer(flex: 3),
            ],
          ),
        ),
      ),
    );
  }
}
