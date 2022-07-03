import 'package:flutter/material.dart';
import 'package:flutter_animator/flutter_animator.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:moviesapp/screens/home/homescreen.dart';

class Phoneinput extends StatefulWidget {
  const Phoneinput({Key? key}) : super(key: key);

  @override
  State<Phoneinput> createState() => _PhoneinputState();
}

class _PhoneinputState extends State<Phoneinput> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 240, 240, 243),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/movieslogin.png",
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 40),
                FadeInDown(
                  child: const Text(
                    "Register",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
                FadeInDown(
                  child: const Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 20,
                    ),
                    child: Text(
                      "Enter your phone number to continue, we wil send you OTP to validate",
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                FadeInDown(
                    child: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: 15,
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10,
                          offset: Offset(0, 4),
                        )
                      ],
                      borderRadius: BorderRadius.circular(10),
                      border:
                          Border.all(color: Colors.black.withOpacity(0.13))),
                  child: Stack(children: [
                    InternationalPhoneNumberInput(
                      onInputChanged: (value) {},
                      cursorColor: Colors.black,
                      formatInput: false,
                      selectorConfig: const SelectorConfig(
                          selectorType: PhoneInputSelectorType.BOTTOM_SHEET),
                      inputDecoration: InputDecoration(
                          contentPadding: EdgeInsets.only(bottom: 15, left: 0),
                          border: InputBorder.none,
                          hintText: "Phone Number",
                          hintStyle: TextStyle(
                            color: Colors.grey.shade500,
                            fontSize: 16,
                          )),
                    ),
                  ]),
                )),
                const SizedBox(
                  height: 20,
                ),
                FadeInDown(
                  child: MaterialButton(
                    minWidth: 300,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return Phoneinput();
                        }),
                      );
                    },
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        "Request OTP",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                FadeInDown(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an Account?",
                      style: TextStyle(
                        color: Colors.grey.shade700,
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return HomeScreen();
                            }),
                          );
                        },
                        child: const Text(
                          "Login",
                          style: TextStyle(color: Colors.blue),
                        ))
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
