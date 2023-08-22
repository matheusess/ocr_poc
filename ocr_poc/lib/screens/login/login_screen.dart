import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:ocr_poc/screens/start/home/home_screen.dart';
import 'package:ocr_poc/screens/start_screen.dart';
import 'package:ocr_poc/stores/login/login_store.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  LoginStore loginStore = LoginStore();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    loginStore = Provider.of<LoginStore>(context);

    autorun((_) {
      if (loginStore.isLogged) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const StartScreen()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () => loginStore.googleLogin(),
          child: const Text('Login'),
        ),
      ),
    );
  }
}
