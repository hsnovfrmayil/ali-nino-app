import 'package:alinino/pages/auth/pages/login.dart';
import 'package:alinino/pages/auth/pages/register.dart';
import 'package:alinino/provider/constants/toggle_press.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginOrRegister extends ConsumerWidget {
  const LoginOrRegister({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (!ref.watch(togglePress)) {
      return LoginPage();
    } else {
      return RegisterPage();
    }
  }
}
