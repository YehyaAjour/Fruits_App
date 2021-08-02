import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruitmarket/layout/market_Screen.dart';
import 'package:fruitmarket/components/components.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  bool isPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/PngItem_2746375.png",
                      width: 200,
                      height: 150,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text("FRUIT MARKET",
                        style: TextStyle(
                            color: Color(0xff69A03A),
                            fontSize: 35.0,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 20,
                    ),
                    defaultTextFormField(
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        validate: (value) {
                          if (value.isEmpty) {
                            return "Email Address Must Not Be Empty";
                          }
                          return null;
                        },
                        labelText: "Email Address",
                        prefix: Icons.email),
                    SizedBox(
                      height: 15,
                    ),
                    defaultTextFormField(
                        controller: passwordController,
                        keyboardType: TextInputType.visiblePassword,
                        isPassword: isPassword,
                        validate: (value) {
                          if (value.isEmpty) {
                            return "Password  Must Not Be Empty";
                          }
                          return null;
                        },
                        labelText: "Password",
                        prefix: Icons.lock,
                        suffix: isPassword
                            ? Icons.visibility
                            : Icons.visibility_off,
                        suffixPressed: () {
                          setState(() {
                            isPassword = !isPassword;
                          });
                        }),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                        onPressed: () {
                          if (formKey.currentState.validate()) {
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (_) => MarketScreen()),
                            );
                          }
                        },
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              Color(0xff69A03A),
                            ),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ))),
                        child: Text(
                          'Login',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Dont Have An Account? "),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Register Now",
                              style: TextStyle(
                                color: Color(0xff69A03A),
                              ),
                            ))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
