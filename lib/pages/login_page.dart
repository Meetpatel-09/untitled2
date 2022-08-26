import 'package:flutter/material.dart';
import 'package:untitled/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool isPressed = false;

  final _formKey = GlobalKey<FormState>();

  _moveToHome() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        isPressed = isPressed ? false : true;
      });
      await Future.delayed(const Duration(seconds: 2));

      Navigator.pushNamed(
        context,
        MyRoutes.homeRoute,
      );
      isPressed = isPressed ? false : true;
      _formKey.currentState!.reset();
      setState(() {
        name = "";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // int counter = 0;
    return Material(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Image.network("https://www.miraeassetmf.co.in/images/default-source/maq/registration.png?sfvrsn=aa71ff68_0"),
              Image.asset("assets/images/supervisor.jpeg"),
              const SizedBox(height: 30.0),
              Text(
                "Welcome $name",
                style: const TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30.0),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(borderSide: BorderSide()),
                          hintText: "Enter Username",
                          label: Text("Username"),
                        ),
                        onChanged: (value) {
                          setState(() {
                            name = value;
                          });
                        },
                        validator: (value) {
                          if (value!.length == 0) {
                            return "Username cannot be empty";
                          } else {
                            return null;
                          }
                        },
                      ),
                      const SizedBox(height: 20.0),
                      TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(borderSide: BorderSide()),
                          hintText: "Enter Password",
                          label: Text("Password"),
                        ),
                        validator: (value) {
                          if (value!.length == 0) {
                            return "Password cannot be empty";
                          } else if (value.length < 6) {
                            return "Password too small";
                          } else {
                            return null;
                          }
                        },
                      ),
                      // const SizedBox(height: 20.0),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () {
                              _formKey.currentState!.reset();
                              setState(() {
                                name = "";
                              });
                            },
                            child: Text("Reset"),
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Text("Forgot Password?")),
                        ],
                      ),

                      Material(
                        color: Colors.deepPurple,
                        borderRadius:
                            BorderRadius.circular(isPressed ? 50.0 : 18.0),
                        child: InkWell(
                          borderRadius:
                              BorderRadius.circular(isPressed ? 50.0 : 18.0),
                          onTap: () {
                            _moveToHome();
                          },
                          child: AnimatedContainer(
                            duration: const Duration(seconds: 2),
                            // padding: const EdgeInsets.symmetric(
                            //     horizontal: 40, vertical: 10),
                            height: 50.0,
                            width: isPressed ? 50.0 : 130.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18.0)),
                            child: Center(
                              child: isPressed
                                  ? const Icon(
                                      Icons.done,
                                      color: Colors.white,
                                    )
                                  : const Text(
                                      "Log In",
                                      style: TextStyle(
                                          fontSize: 22.0, color: Colors.white),
                                    ),
                            ),
                          ),
                        ),
                      ),

                      // ElevatedButton(
                      //   onPressed: () {
                      //     // counter++;
                      //     // print("button precced " + counter.toString() + " times");
                      // Navigator.pushNamed(
                      //   context,
                      //   MyRoutes.homeRoute,
                      // );
                      //   },
                      //   style: ButtonStyle(
                      //       minimumSize:
                      //           MaterialStateProperty.all(const Size(120, 40))),
                      //   child: const Text("Log In"),
                      // ),
                    ],
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
