import 'package:flutter/material.dart';
import 'package:chat/screens/signinOrSingUp/signin_or_SingnUp_screens.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Spacer(flex: 2),
            Image.asset('assets/images/welcome_image.png'),
            const Spacer(flex: 3),
            const Text(
              'Welcome to our freedom \nmessaging app',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const Spacer(),
            const Text(
              'Freedom talk any of your \nmother language.',
              textAlign: TextAlign.center,
              // style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const Spacer(flex: 18), //3
            FittedBox(
              child: TextButton(
                  onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SinginOrSignupScreen(),
                        ),
                      ),
                  child: Row(
                    children: const [
                      Text(
                        'Skip',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 20),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 17,
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
