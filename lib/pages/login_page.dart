import 'package:flutter/material.dart';
import '../components/text_field.dart';
import '../components/button.dart';

class LoginPage extends StatefulWidget {
  final Function()? onTap;
  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFFFFFFF),
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // App Logo
                  Image.asset(
                    'assets/icon.png',  
                    width: 100,            
                    height: 100,
                  ),

                  const SizedBox(height: 50),

                  // Welcome message
                  const Text('Selamat Datang!',
                      style: TextStyle(
                        fontFamily: 'Roboto', 
                        fontSize:25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      )),

                  const SizedBox(height: 25),
                  
                  // Email field
                  MyTextField(
                      controller: emailController,
                      hintText: 'Username',
                      obscureText: false),

                  const SizedBox(height: 10),

                  // Password field
                  MyTextField(
                      controller: passwordController,
                      hintText: 'Password',
                      obscureText: true),

                  const SizedBox(height: 10),

                  // Sign in button
                  MyButton(onTap: () {}, text: 'Masuk'),

                  const SizedBox(height: 25),

                  // Register option
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Belum punya akun?',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            color: Colors.black,
                          )),
                      const SizedBox(width: 4),
                      GestureDetector(
                          onTap: widget.onTap,
                          child: const Text(
                            'Daftar Sekarang!',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              color: Color(0xFF4285F4),
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ),
        )));
  }
}
