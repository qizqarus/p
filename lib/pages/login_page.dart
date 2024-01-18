import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:minimalistic_chat/components/my_button.dart';
import 'package:minimalistic_chat/components/my_text_field.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pwController = TextEditingController();

  LoginPage({super.key});

  void login() {}

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

          Gap(25),

          // login
          MyButton(
            text: "asd",
            onTap: login,
          ),
          // register
        ]),
      ),
    );
  }
}
