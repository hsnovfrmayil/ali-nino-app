import 'package:alinino/pages/tab_bar/tab_bar_page.dart';
import 'package:alinino/services/auth/auth_service.dart';
import 'package:alinino/services/auth/login_or_register.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthGate extends StatelessWidget {
  AuthGate({super.key});
  final auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return TabBarPage();
          } else {
            return const LoginOrRegister();
          }
        },
      ),
    );
  }
}
