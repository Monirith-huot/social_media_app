import 'package:flutter/material.dart';
import '../widgets/curve_cliper.dart';
import 'homepage_screen.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          // FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                ClipPath(
                  clipper: CurveClipper(),
                  child: Image(
                    height: MediaQuery.of(context).size.height / 2,
                    width: double.infinity,
                    image: const AssetImage(
                      'assets/images/login_background.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                Text(
                  "FRENZY",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 10.0,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 15,
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Username",
                      prefixIcon: Icon(
                        Icons.account_box,
                        size: 30,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 15,
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Password",
                      prefixIcon: Icon(
                        Icons.lock,
                        size: 30,
                      ),
                    ),
                    obscureText: true,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => HomePage(),
                      ),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 60,
                    ),
                    alignment: Alignment.center,
                    height: 45,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.5,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        alignment: Alignment.center,
                        color: Theme.of(context).colorScheme.primary,
                        height: 80,
                        child: const Text(
                          "Don't have account? Sign up",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
