import 'package:flutter/material.dart';
import 'package:foodcano/canteen/newpassword.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class verifyotp extends StatefulWidget {
  const verifyotp({Key? key}) : super(key: key);

  @override
  State<verifyotp> createState() => _verifyotpState();
}

class _verifyotpState extends State<verifyotp> {
  @override
  Widget build(BuildContext context) {
    var value="alpha";
    return Scaffold(
      body: Container(
        color: Color(0xff93c572),
        child: Container(
          margin: EdgeInsets.fromLTRB(0, 110, 0, 0),
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Text(
                  'OTP Verfication',
                  style: GoogleFonts.fredokaOne(
                    fontSize: 35,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Text(
                  'We have sent your code on your E-mail',
                  style: GoogleFonts.comicNeue(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "This code will expired in ",
                      style: GoogleFonts.comicNeue(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    TweenAnimationBuilder(
                      tween: IntTween(begin: 30, end: 0),
                      duration: Duration(seconds: 30),
                      builder: (context, value, child) =>
                          Text("00:${value}",style: TextStyle(decoration: TextDecoration.none,color: Colors.red, fontSize: 16, ),),
                      onEnd: () {},
                    )
                  ],
                ),
              ),

              Expanded(
                child: Center(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(25, 20, 25, 80),
                          child: PinCodeTextField(
                            length: 4,
                            appContext: context,
                            onChanged: (value) {},
                            pinTheme: PinTheme(
                                shape: PinCodeFieldShape.circle,
                                borderRadius: BorderRadius.circular(20),
                                fieldHeight: 70,
                                fieldWidth: 70
                            ),

                          ),
                        ),
                        Container(

                          width: MediaQuery.of(context).size.width*0.8,
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Color(0xfffeb74d),
                              borderRadius: BorderRadius.circular(30)
                          ),
                          child: InkWell(
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => newpassword()));
                            },
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
                  )
                )
              ),


              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Didn't received the code ?? ",
                      style: GoogleFonts.comicNeue(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        print("clicked this button");
                      },
                      child: Text(
                        "Click here",
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
              )

            ],
          ),
        ),
      ),
    );
  }
}
