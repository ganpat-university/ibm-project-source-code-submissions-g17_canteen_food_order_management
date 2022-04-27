import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  static const String _title = 'SignUp Page';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Scaffold(
        body: const SignupPageUI(),
      ),
    );
  }
}

class SignupPageUI extends StatefulWidget {
  const SignupPageUI({Key? key}) : super(key: key);

  @override
  _SignupPageUIState createState() => _SignupPageUIState();
}

class _SignupPageUIState extends State<SignupPageUI> {
  bool _obscureText = true;
  TextEditingController fnameController = TextEditingController();
  TextEditingController lnameController = TextEditingController();
  TextEditingController contno_Controller = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    var lightgrey = Color(0xAFEAE8E8);
    var commonmargin= 20;

    return Container(
      color: Color(0xff93c572),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          Padding(
            padding: EdgeInsets.fromLTRB(20, 50, 0, 0),
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Container(
            margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30)
                ),
                image: DecorationImage(
                  image: AssetImage('assets/image/3.png'), fit: BoxFit.cover,
                  colorFilter:
                  ColorFilter.mode(Colors.black.withOpacity(0.25),
                      BlendMode.dstATop),),
                color: Colors.white
            ),
            child: Padding(
              padding: EdgeInsets.fromLTRB(25, 0, 20, 20),
              child: Form(
                autovalidateMode: AutovalidateMode.always,
                child: ListView(children: <Widget>[
                  Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
                      child:Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Getting Started !',
                            style: GoogleFonts.fredokaOne(
                              fontSize: 30,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Create account to Continue.',
                            style: GoogleFonts.comicNeue(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                      ],)),


                  Container(
                    margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'First Name',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      validator: MultiValidator(
                          [
                            RequiredValidator(errorText: 'Required *'),
                          ]
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Last Name',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      validator: MultiValidator(
                          [
                            RequiredValidator(errorText: 'Required *'),
                          ]
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Conatct Number',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      validator: MultiValidator(
                          [
                            RequiredValidator(errorText: 'Required *'),
                            MinLengthValidator(10, errorText: "Password must be at least 10 digits long")
                          ]
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                    child: TextFormField(
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
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                    child: TextFormField(
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
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                    child: TextFormField(
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
                  ),




                  SizedBox(
                    height: 30,
                  ),
                  Container(

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
                  )
                ]),
              ),
            ),
        ),
          ),]
      ),
    );
  }
}