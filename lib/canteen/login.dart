import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodcano/canteen/SignupPage.dart';

import 'package:foodcano/canteen/verifyotp.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'canteenlogin.dart';
import 'forgotpassword.dart';

class Mylogin extends StatefulWidget {
  const Mylogin({Key? key}) : super(key: key);

  @override
  State<Mylogin> createState() => _MyloginState();
}

class _MyloginState extends State<Mylogin> {
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
                image: AssetImage('assets/image/1.png'), fit: BoxFit.cover,
              colorFilter:
              ColorFilter.mode(Colors.black.withOpacity(0.25),
                  BlendMode.dstATop),),
            color: Colors.white
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Stack(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(30, 25, 0, 0),
                  child: Text(
                    'Welcome\nBack !',
                    style: GoogleFonts.fredokaOne(
                      fontSize: 38,
                      color: Colors.black,
                    ),
                  ),
                ),
                SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(30, 170, 30, 0),
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
                          height: 30,
                        ),
                        TextFormField(
                          obscureText: _obscureText,
                          decoration: InputDecoration(
                            hintText: 'Password',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            suffixIcon: IconButton(
                              icon: Icon(_obscureText
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                                color: Colors.black,),
                              onPressed: (){
                                setState(() {
                                  _obscureText=!_obscureText;
                                });
                              },
                            ),
                          ),
                          validator: MultiValidator(
                            [
                              RequiredValidator(errorText: "Required *"),
                              MinLengthValidator(8, errorText: "Password must be at least 8 digits long"),
                            ]
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Log In',
                              style: GoogleFonts.comicNeue(
                                  fontSize: 35,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Color(0xfffeb74d),
                              child: IconButton(
                                onPressed: () {
                                },
                                icon: Icon(Icons.arrow_forward, color: Colors.white,),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignupPage()));
                              },
                              child: Text(
                                'Sign Up',
                                style: GoogleFonts.comicNeue(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                            TextButton(
                             onPressed: (){
                               Navigator.of(context).push(MaterialPageRoute(builder: (context) => forgotpassword()));
                              },
                              child: Text(
                                'Forgot Password',
                                style: GoogleFonts.comicNeue(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => canteenlogin()));
                              },
                              child: Text(
                                'Are you a Canteen?',
                                style: GoogleFonts.comicNeue(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ],
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
