import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:invoiceease/backend/firebase_auth.dart';
import 'package:invoiceease/utils/reuseable_functions/interface_related.dart';

class Signupscreen extends StatefulWidget {
  const Signupscreen({super.key});

  @override
  State<Signupscreen> createState() => _SignupscreenState();
}

class _SignupscreenState extends State<Signupscreen> {
  TextEditingController usernamenameController = TextEditingController();
  String password = '';
  String confirmpassword = '';
  bool ispasswordmatch = true;

  //to print namecontroller - username value to the console----------------------
  @override
  void initState() {
    super.initState();
    // Add a listener to the nameController to listen for changes
    usernamenameController.addListener(() {
      print(
          "User NameController updated: ${usernamenameController.text}---------------------");
    });
  }

  //------------------------------------------------------------------------------

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 144, 179, 184),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Stack(
            children: <Widget>[
              Container(
                height: 340,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(50),
                  ),
                  color: Color.fromARGB(144, 57, 127, 129),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 12,
                    ),
                    Image.asset(
                      "./assets/images/login.png",
                      width: 300,
                      height: 300,
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        " Signup",
                        style: TextStyle(
                            fontSize: 30,
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    GetText("Username", "Username", usernamenameController),
                    SizedBox(
                      height: 10,
                    ),
                    GetPassword(
                      onPasswordChanged: (value) {
                        setState(() {
                          password = value;
                        });
                      },
                      varname: 'Password',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    GetPassword(
                      onPasswordChanged: (value) {
                        setState(() {
                          confirmpassword = value;
                        });
                      },
                      varname: 'Confirm Password',
                    ),
                    if (!(ispasswordmatch = (password == confirmpassword)))
                      const Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: EdgeInsets.all(2.0),
                          child: Text(
                            "Password not matched",
                            style: TextStyle(
                                color: Color.fromARGB(255, 197, 39, 27)),
                          ),
                        ),
                      ),
                    const SizedBox(
                      height: 50,
                    ),
                    GestureDetector(
                      onTap: () async {
                        final newuser = await registerWithEmailAndPassword(
                            usernamenameController.text, password);

                        if (newuser != null) {
                          Get.toNamed('/l');
                        } else {
                          Get.snackbar('Error', 'User creation failed',
                              backgroundColor:
                                  const Color.fromARGB(112, 255, 255, 255),
                              icon: Icon(Icons.warning));
                        }
                      },
                      child: Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18.0),
                            color: Color.fromARGB(194, 19, 86, 103),
                            //color: Color.fromARGB(214, 255, 255, 255),
                          ),
                          child: const Center(
                            child: Text(
                              "SignUp",
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Color.fromARGB(225, 255, 255, 255),
                                  fontWeight: FontWeight.w400),
                            ),
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
