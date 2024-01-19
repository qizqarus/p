import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:minimalistic_chat/services/auth/auth.service.dart';
import 'package:minimalistic_chat/components/my_button.dart';
import 'package:minimalistic_chat/components/my_text_field.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pwController = TextEditingController();

  final void Function()? onTap;

  LoginPage({super.key, required this.onTap});

  void login(BuildContext context) async {
    final authService = AuthService();

    try {
      await authService.signInWithEmailPassword(
          _emailController.text, _pwController.text);
    } catch (e) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text(e.toString()),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          // logo
          Icon(
            Icons.message,
            size: 60,
            color: Theme.of(context).colorScheme.primary,
          ),

          const Gap(50),

          // message
          Text(
            "Welcome back, You've been missed!",
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
              fontSize: 16,
            ),
          ),

          const Gap(50),

          // email
          MyTextField(
            hintText: 'Email',
            obscureText: false,
            controller: _emailController,
          ),

          const Gap(10),

          // password
          MyTextField(
            hintText: 'Password',
            obscureText: true,
            controller: _pwController,
          ),

          const Gap(25),

          // login
          MyButton(
            text: "Login",
            onTap: () => login(context),
          ),

          const Gap(25),

          // register
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Not a member?",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              const Gap(5),
              GestureDetector(
                onTap: onTap,
                child: Text(
                  "Register now!",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
