import 'package:alinino/pages/auth/widgets/my_button.dart';
import 'package:alinino/pages/auth/widgets/my_text_field.dart';
import 'package:alinino/provider/constants/toggle_press.dart';
import 'package:alinino/services/auth/auth_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginPage extends ConsumerWidget {
  LoginPage({super.key});
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final authService = AuthService();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  sizedBoxHeight(50),
                  const Icon(CupertinoIcons.ellipses_bubble, size: 100),
                  sizedBoxHeight(50),
                  const Text(
                    "Welcome back you've been missed",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  sizedBoxHeight(25),
                  MyTextField(
                    controller: emailController,
                    hintText: 'Email',
                    obcureText: false,
                  ),
                  MyTextField(
                    controller: passwordController,
                    hintText: 'Password',
                    obcureText: true,
                  ),
                  sizedBoxHeight(25),
                  MyButton(
                    onTap: () async {
                      try {
                        authService.signInWithEmailandPassword(
                            emailController.text, passwordController.text);
                      } catch (e) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              e.toString(),
                            ),
                          ),
                        );
                      }
                    },
                    text: "Sign In",
                  ),
                  sizedBoxHeight(50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Not a member?"),
                      sizedBoxWidth(4),
                      GestureDetector(
                        onTap: () => ref
                            .read(togglePress.notifier)
                            .update((state) => !state),
                        child: const Text(
                          "Register now",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  SizedBox sizedBoxHeight(double height) {
    return SizedBox(
      height: height,
    );
  }

  SizedBox sizedBoxWidth(double width) {
    return SizedBox(
      width: width,
    );
  }
}
