import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:invoiceease/interfaces/loginSignup/signup.dart';
import 'package:invoiceease/interfaces/onboardingScreen/welcome.dart';
import 'package:invoiceease/reuseable_functions/interface_related.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController nameController = TextEditingController();
  late String password;

  //to print namecontroller - username value to the console----------------------
  @override
  void initState() {
    super.initState();
    // Add a listener to the nameController to listen for changes
    nameController.addListener(() {
      print("NameController updated: ${nameController.text}");
    });
  }

  //------------------------------------------------------------------------------

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 144, 179, 184),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Image.asset(
                    "./assets/images/logo.png",
                    width: 300,
                    height: 300,
                  ),
                  const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        " Login",
                        style: TextStyle(
                            fontSize: 30,
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontWeight: FontWeight.w500),
                      )),
                  const SizedBox(
                    height: 12,
                  ),
                  GetText("Username", "Username", nameController),
                  SizedBox(
                    height: 12,
                  ),
                  GetPassword(
                    onPasswordChanged: (value) {
                      setState(() {
                        password = value;
                        //to print password value to the console----------------------
                        print("Password updated: $password");
                        //----------------------------------------------------------------
                      });
                    },
                    varname: 'Password',
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  GestureDetector(
                    onTap: () {
                      debugPrint("onTap");
                    },
                    child: const Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(255, 40, 33, 243),
                              fontWeight: FontWeight.w400),
                        )),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => welcomeScreen()),
                      );
                    },
                    child: Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18.0),
                          color: Color.fromARGB(115, 20, 15, 124),
                        ),
                        child: const Center(
                          child: Text(
                            "Login",
                            style: TextStyle(
                                fontSize: 22,
                                color: Colors.white,
                                fontWeight: FontWeight.w400),
                          ),
                        )),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Center(
                    child: Text.rich(
                      TextSpan(
                        text: 'New to InvoiceEase? ',
                        style: TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(
                                141, 19, 19, 19)), // default text style
                        children: <TextSpan>[
                          TextSpan(
                              text: ' Register ',
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Signupscreen()),
                                  );
                                  debugPrint('The button is clicked!');
                                },
                              //recognizer: GestureDoubleTapCallback()..,
                              //recognizer: TapGestureRecognizer()..onTap = () => print('Tap Here onTap'),
                              style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  color: Color.fromARGB(255, 37, 6, 213))),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
