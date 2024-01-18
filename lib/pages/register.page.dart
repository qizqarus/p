import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:minimalistic_chat/components/my_button.dart';
import 'package:minimalistic_chat/components/my_text_field.dart';

class RegisterPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pwController = TextEditingController();
  final TextEditingController _confirmPwController = TextEditingController();

  final void Function()? onTap;

  RegisterPage({super.key, required this.onTap});

  void register() {}

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
            "Let's create an account for you",
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

          const Gap(10),

          // password
          MyTextField(
            hintText: 'Confirm password',
            obscureText: true,
            controller: _confirmPwController,
          ),

          const Gap(25),

          // login
          MyButton(
            text: "Register",
            onTap: register,
          ),

          const Gap(25),

          // register
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already have an account?",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              const Gap(5),
              GestureDetector(
                onTap: onTap,
                child: Text(
                  "Login now!",
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
