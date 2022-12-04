import 'package:flutter/material.dart';

import 'homepage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isObscure = true;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(32, 173, 32, 56),
              child: Image.asset(
                'images/ProductArena_logo1.png',
                width: 323,
                height: 66,
                fit: BoxFit.contain,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                width: 326,
                child: Padding(
                  padding: const EdgeInsets.only(left: 1.0),
                  child: TextField(
                    controller: emailController,
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(255, 245, 243, 243),
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 1),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: const BorderSide(
                            color: const Color.fromARGB(255, 4, 231, 98),
                            width: 2),
                      ),
                      hintText: 'E-mail',
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                width: 326,
                child: Padding(
                  padding: const EdgeInsets.only(left: 1.0),
                  child: TextField(
                    obscureText: _isObscure,
                    controller: passwordController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromARGB(255, 245, 243, 243),
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 1),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 4, 231, 98), width: 2),
                      ),
                      hintText: 'Password',
                      suffixIcon: IconButton(
                          icon: Icon(_isObscure
                              ? Icons.visibility
                              : Icons.visibility_off),
                          splashRadius: 2,
                          onPressed: () {
                            setState(() {
                              _isObscure = !_isObscure;
                            });
                          }),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
                onTap: () {
                  if (emailController.text == 'career@tech387.com' &&
                      passwordController.text == 'Pass123!') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage()),
                    );
                  } else {}
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                      padding: const EdgeInsets.all(5),
                      height: 40,
                      width: 326,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 4, 231, 98)),
                      child: const Center(
                        child: Text(
                          'Log In',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Outfit',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )),
                )),
          ],
        ),
      )),
    );
  }
}
