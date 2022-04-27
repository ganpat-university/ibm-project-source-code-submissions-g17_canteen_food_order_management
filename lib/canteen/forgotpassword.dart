import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:foodcano/canteen/login.dart';
import 'package:foodcano/canteen/verifyotp.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:google_fonts/google_fonts.dart';

import 'canteenlogin.dart';
import 'forgotpassword.dart';

class forgotpassword extends StatefulWidget {
  const forgotpassword({Key? key}) : super(key: key);

  @override
  State<forgotpassword> createState() => _forgotpasswordState();
}

class _forgotpasswordState extends State<forgotpassword> {
  bool _obscureText = true;
  @override

  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: AutovalidateMode.always,
      child: Container(
        color: Color(0xff93c572),
        child: Container(
          margin: EdgeInsets.fromLTRB(0, 110, 0, 0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  topLeft: Radius.circular(30)
              ),
              image: DecorationImage(
                image: AssetImage('assets/image/4.png'), fit: BoxFit.cover,
                colorFilter:
                ColorFilter.mode(Colors.black.withOpacity(0.25),
                    BlendMode.dstATop),),
              color: Colors.white
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 25, 0, 0),
                  child: Text(
                    'Forgot Your Password ?',
                    style: GoogleFonts.fredokaOne(
                      fontSize: 25,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
                  child: Text(
                    'Enter your registered email below to',
                    style: GoogleFonts.comicNeue(
                      fontSize: 18,
                      color: Color(0xff878787),
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Text(
                    'receive password reset instruction.',
                    style: GoogleFonts.comicNeue(
                        fontSize: 18,
                        color: Color(0xff878787),
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(30, 110, 30, 0),
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Email',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          validator: MultiValidator(
                              [
                                RequiredValidator(errorText: 'Required *'),
                                EmailValidator(errorText: 'Not A Valid Email'),
                              ]
                          ),
                        ),

                        SizedBox(
                          height: 60,
                        ),

                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Remember Password ?? ",
                                style: TextStyle(
                                  decoration: TextDecoration.none,
                                  color: Colors.black,
                                  fontSize: 15,
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  print("clicked this button");
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Mylogin()));
                                },
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      color: Colors.green,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => verifyotp()));
                          },
                          child: Container(

                            width: MediaQuery.of(context).size.width*0.8,
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                color: Color(0xfffeb74d),
                                borderRadius: BorderRadius.circular(30)
                            ),
                            child: Center(
                              child: Text(
                                'Submit',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
