import 'package:flutter/material.dart';
import 'package:joball/dashboard.dart';
import 'package:joball/signup_page.dart';
import 'package:joball/components/custom_textformfield.dart';
import 'package:joball/components/custom_elevatedbutton.dart';
import 'package:joball/auth/auth_service.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final AuthService _authService = AuthService();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.15),
          child: Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: const Row(
                  children: [
                    Text(
                      "Login to",
                      style: TextStyle(
                          fontSize: 34.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Recruify",
                      style: TextStyle(
                          fontSize: 34.0,
                          color: Colors.green,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 70),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: const Text(
                        "Email",
                        style: TextStyle(
                            color: Color.fromARGB(255, 197, 197, 197),
                            fontSize: 18),
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
                        style: TextStyle(
                            color: Color.fromARGB(255, 197, 197, 197),
                            fontSize: 18),
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
                          } else if (value.length < 2) {
                            return 'Password must have minimum of 2 characters';
                          }
                          return null;
                        },
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: InkWell(
                        onTap: () {},
                        child: const Text(
                          "Forget Password?",
                          style: TextStyle(color: Colors.green, fontSize: 18),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: CustomElevatedButton(
                        variant: ElevatedButtonVariant.filled,
                        label: "Login",
                        onPressed: () async {
                          if (_formKey.currentState?.validate() ?? false) {
                            final email = emailController.text;
                            final password = passwordController.text;
                            final user =
                                await _authService.siginIn(email, password);

                            if (user != null) {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Dashboard()));
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text('Invalid Credentials')));
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
                        style: TextStyle(color: Colors.white),
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
                      "Don't have an account yet?",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 5),
                      child: InkWell(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignupPage()));
                        },
                        child: const Text(
                          "Sign Up",
                          style: TextStyle(color: Colors.green, fontSize: 16),
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
