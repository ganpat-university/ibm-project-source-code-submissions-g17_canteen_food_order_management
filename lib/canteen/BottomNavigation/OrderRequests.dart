import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OrderRequest extends StatelessWidget {
  const OrderRequest({Key? key}) : super(key: key);

  static const String _title = 'Order Requests';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: OrderRequestUI(),
    );
  }
}

class OrderRequestUI extends StatefulWidget {
  const OrderRequestUI({Key? key}) : super(key: key);

  @override
  _OrderRequestUIState createState() => _OrderRequestUIState();
}

class _OrderRequestUIState extends State<OrderRequestUI> {
  PickedFile? imageFile;
  final ImagePicker picker = ImagePicker();
  bool _obscureText = true;

  TextEditingController fnameController = TextEditingController();
  TextEditingController lnameController = TextEditingController();
  TextEditingController contno_Controller = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  var lightgrey = Color(0xAFEAE8E8);
  var selecteditem = "Student";
  String dropdownvalue = 'Student';

  var items = ['Student', 'College Faculty', 'Chef'];

  var focusNode = FocusNode();


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var lightgrey = Color(0xAFEAE8E8);
    var commonmargin = 20;

    return Scaffold(
      body: Container(
          color: Color(0xff93c572),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:EdgeInsets.fromLTRB(22, 40, 0, 0),
                child: Text(
                  'Order Request',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.aBeeZee(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Flexible(
                flex: 4,
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
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
                      padding: const EdgeInsets.all(15),

                      child: Column(
                        children: [
                          Expanded(
                            child: SingleChildScrollView(
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[



                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20) ),
                                          boxShadow: const [
                                            BoxShadow(
                                                color: Colors.grey,
                                                blurRadius: 5,
                                                offset: Offset(2.0, 5.0))
                                          ],
                                          color: Color(0xffe1eee1)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("Italian Pizza", style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),),

                                            Padding(
                                                padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                                                child: Text("Quantity: 2", style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),)),

                                            Padding(
                                              padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                                              child: Center(
                                                child: Container(
                                                  width: MediaQuery.of(context).size.width,
                                                  height: 1,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),

                                            Padding(
                                              padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                    child: Padding(
                                                      padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                                                      child: InkWell(
                                                        onTap: () =>showModalBottomSheet(
                                                          context: context,
                                                          isScrollControlled:true,
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius: BorderRadius.vertical(
                                                                  top: Radius.circular(20)
                                                              )
                                                          ),
                                                          builder: (context)=>confirmSheet(),),
                                                        child: Container(
                                                          height: 50,
                                                          decoration: BoxDecoration(
                                                            borderRadius: BorderRadius.circular(10),
                                                            boxShadow: const [
                                                              BoxShadow(
                                                                  color: Colors.grey,
                                                                  blurRadius: 5,
                                                                  offset: Offset(2.0, 5.0))
                                                            ],

                                                            color:Colors.green,
                                                          ),

                                                          child:  Center(child: Text("Confirm", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),)),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Padding(
                                                      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                                      child: InkWell(
                                                        onTap: () =>showModalBottomSheet(
                                                          context: context,
                                                          isScrollControlled:true,
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius: BorderRadius.vertical(
                                                                  top: Radius.circular(20)
                                                              )
                                                          ),
                                                          builder: (context)=>declineSheet(),),
                                                        child: Container(
                                                          height: 50,
                                                          decoration: BoxDecoration(
                                                              borderRadius: BorderRadius.circular(10),
                                                              boxShadow: const [
                                                                BoxShadow(
                                                                    color: Colors.grey,
                                                                    blurRadius: 5,
                                                                    offset: Offset(2.0, 5.0))
                                                              ],
                                                              color: Colors.red
                                                          ),

                                                          child:  Center(child: Text("Decline", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),)),
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),

                                          ],),
                                      ),
                                    ),



                                  ]),
                            ),
                          ),
                        ],
                      )),
                ),
              ),
            ],
          )
      ),
    );
  }





  Widget confirmSheet() =>Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Padding(
          padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
          child: Text("Select Time to prepare the food", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 18),)),
      inputTime(),
      Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 28),
        child: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: Container(
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5,
                      offset: Offset(2.0, 5.0))
                ],
                color: Colors.green),

            child:  Center(child: Text("Send", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),)),
          ),
        ),
      ),

    ],
  );

  Widget declineSheet() =>Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Padding(
          padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
          child: Text("Provide Reason for declining", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 18),)),
      Container(
        width: MediaQuery.of(context).size.width * 0.8,
        height: 200,
        margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
        decoration: BoxDecoration(
            color: lightgrey, borderRadius: BorderRadius.circular(20)),
        padding: const EdgeInsets.all(10),
        child: Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
          child: Container(
            margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: TextField(
              keyboardType: TextInputType.multiline,
              maxLines: 6,
              decoration: const InputDecoration(
                labelText: 'Reason',
              ),
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 28),
        child:InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: Container(
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5,
                      offset: Offset(2.0, 5.0))
                ],
                gradient: LinearGradient(
                  colors: [Color(0xFF007713), Color(0xFF04FE6C)],
                )),

            child:  Center(child: Text("Send", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),)),
          ),
        ),
      ),

    ],
  );

  Widget inputTime() =>Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(25, 20, 25, 5),
              child: PinCodeTextField(
                length: 4,
                appContext: context,
                onChanged: (value) {},
                pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(20),
                    fieldHeight: 70,
                    fieldWidth: 70
                ),
                keyboardType: TextInputType.number,

              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Center(
                    child: Text(
                      'Hours',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xffd4d4d4),
                        fontSize: 25
                      )
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Text(
                        'Minutes',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xffd4d4d4),
                            fontSize: 25
                        )
                    ),
                  ),
                )
              ],
            ),

            const SizedBox(
              height: 15,
            ),

          ],
        ),
      )
  );


}








