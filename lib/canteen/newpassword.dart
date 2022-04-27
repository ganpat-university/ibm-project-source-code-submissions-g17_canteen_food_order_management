import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:google_fonts/google_fonts.dart';
class newpassword extends StatefulWidget {
  const newpassword({Key? key}) : super(key: key);

  @override
  State<newpassword> createState() => _newpasswordState();
}

class _newpasswordState extends State<newpassword> {
  get formkey => null;
  bool _obscureText = true;

  @override
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
                    'Create New Password',
                    style: GoogleFonts.fredokaOne(
                      fontSize: 25,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
                  child: Text(
                    'New Password must be different from',
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
                    'previously used password.',
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
                          obscureText: _obscureText,
                          decoration: InputDecoration(
                            hintText: 'New Password',
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
                          height: 30,
                        ),
                        TextFormField(
                          obscureText: _obscureText,
                          decoration: InputDecoration(
                            hintText: 'Confirm Password',
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
                          height: 60,
                        ),

                        InkWell(
                          onTap: () {},
                          child: Container(

                            width: MediaQuery.of(context).size.width*0.8,
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                color: Color(0xfffeb74d),
                                borderRadius: BorderRadius.circular(30)
                            ),
                            child: Center(
                              child: Text(
                                'Reset Password',
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
