import 'package:flutter/material.dart';
import 'package:student_portals/pages/home.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Image.asset(
                "assets/images/undraw_Professor_re_mj1s.png",
                fit: BoxFit.fill,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Welcome to Student Portal",
                style: TextStyle(fontWeight: FontWeight.w300, fontSize: 24),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(28, 10, 28, 0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Enter Your Institute Email ID",
                        labelText: "Email",
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: "Enter Your Password",
                        labelText: "Password",
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) => const Home())));
                        },
                        style: TextButton.styleFrom(
                            shadowColor: Colors.cyan[400],
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            minimumSize: const Size(140, 40),
                            backgroundColor: Colors.cyan[600]),
                        child: const Text(
                          "Login",
                          textScaleFactor: 1.4,
                        )),
                    const SizedBox(
                      height: 4,
                    ),
                    TextButton(onPressed: (){}, child: const Text("Don't Have an Accout?"),)
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
