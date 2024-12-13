import 'package:flutter/material.dart';
import 'package:joball/login_page.dart';
import 'package:joball/components/custom_textformfield.dart';
import 'package:joball/components/custom_elevatedbutton.dart';
import 'package:joball/auth/auth_service.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _formKey = GlobalKey<FormState>();
  final AuthService _authService = AuthService();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.13,
              bottom: MediaQuery.of(context).size.height * 0.06),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/logos/app/app_logo.png', height: 58),
                  const Text(
                    "Job All",
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 12, 35, 75)),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: const Text(
                  "Sign Up",
                  style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w800),
                ),
              ),
              const SizedBox(height: 24),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: const Text(
                        "Email",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                    const SizedBox(height: 4),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: CustomTextformfield(
                        hintText: "user@email.com",
                        controller: emailController,
                        variant: TextFieldVariant.email,
                        validator: (value) {
                          if (value == null ||
                              !RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$')
                                  .hasMatch(value)) {
                            return 'Please enter a valid email';
                          }
                          return null;
                        },
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: const Text(
                        "Password",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                    const SizedBox(height: 4),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: CustomTextformfield(
                        hintText: "Your Password",
                        controller: passwordController,
                        variant: TextFieldVariant.password,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter a password';
                          } else if (value.length < 8) {
                            return 'Password must have minimum of 8 characters';
                          }
                          return null;
                        },
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: const Text(
                        "Confirm Password",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                    const SizedBox(height: 4),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: CustomTextformfield(
                        hintText: "Confirm your Password",
                        controller: confirmPasswordController,
                        variant: TextFieldVariant.password,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please confirm your password';
                          } else if (value != passwordController.text) {
                            return 'Password confirmation did not match';
                          }
                          return null;
                        },
                      ),
                    ),
                    const SizedBox(height: 32),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: CustomElevatedButton(
                        variant: ElevatedButtonVariant.filled,
                        label: "Sign Up",
                        onPressed: () async {
                          if (_formKey.currentState?.validate() ?? false) {
                            final email = emailController.text;
                            final password = passwordController.text;

                            try {
                              final user =
                                  await _authService.signUp(email, password);

                              if (user != null) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text(
                                          'Sign up successfull! Redirecting to login.')),
                                );

                                await Future.delayed(Duration(seconds: 2));

                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const LoginPage()));
                              }
                            } catch (e) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text(e.toString())));
                            }
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text('Please fix the errors')));
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 22),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        color: const Color.fromARGB(255, 44, 44, 44),
                        width: 100,
                        height: 1,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        "OR",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: const Color.fromARGB(255, 44, 44, 44),
                        width: 100,
                        height: 1,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 22),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: Stack(children: [
                  CustomElevatedButton(
                    variant: ElevatedButtonVariant.outlined,
                    label: "Continue with Google",
                    onPressed: () {
                      print("pressed!");
                    },
                  ),
                  Positioned(
                    top: 10,
                    left: 14,
                    child: Image.asset(
                      'assets/logos/google_logo.webp',
                      height: 30,
                    ),
                  )
                ]),
              ),
              const SizedBox(height: 12),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: Stack(
                  children: [
                    CustomElevatedButton(
                      variant: ElevatedButtonVariant.outlined,
                      label: "Continue with Facebook",
                      onPressed: () {
                        print("Pressed!");
                      },
                    ),
                    const Positioned(
                      top: 10,
                      left: 14,
                      child: Icon(
                        Icons.facebook,
                        size: 28,
                        color: Colors.blue,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 26),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: Row(
                  children: [
                    const Text(
                      "Already have an account?",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 5),
                      child: InkWell(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginPage()));
                        },
                        child: const Text(
                          "Login",
                          style: TextStyle(color: Colors.blue, fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
