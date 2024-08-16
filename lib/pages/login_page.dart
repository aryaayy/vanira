import 'package:flutter/material.dart';
import 'package:vanira/main.dart';
import 'package:vanira/templates/forms/form_text.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with AppMixin{
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Masuk",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: bold,
                  color: theme.colorScheme.onPrimary,
                ),
              ),
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  width: 500,
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FormText(
                          inputLabel: "Email",
                          labelFontSize: 18,
                          hintText: "Masukkan Email",
                          hintTextSize: 14,
                          icon: Icons.alternate_email_rounded,
                          controller: _emailController,
                        ),
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: primaryContainer,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}