import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:google_fonts/google_fonts.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  bool _obscureText = true;
  @override



  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Color(0xff93c572),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:EdgeInsets.fromLTRB(22, 40, 0, 0),
                child: Text(
                  'Cart',
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



                                    InkWell(
                                      onTap: () {
                                        //Item Description page

                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: Container(
                                          width: MediaQuery.of(context).size.width,
                                          height: 100,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              boxShadow: const [
                                                BoxShadow(
                                                    color: Colors.grey,
                                                    blurRadius: 5,
                                                    offset: Offset(2.0, 5.0))
                                              ],
                                              color: Color(0xffe1eee1)),
                                          child: Padding(
                                            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                                            child: Row(
                                              children: [
                                                const CircleAvatar(
                                                  radius: 40,
                                                  backgroundImage: NetworkImage(
                                                      'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=481&q=80'),
                                                ),
                                                Expanded(
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: const <Widget>[
                                                      Padding(
                                                        padding: EdgeInsets.fromLTRB(15, 15, 0, 0),
                                                        child: Text(
                                                          'Italian Pizza',
                                                          style: TextStyle(
                                                              fontSize: 20,
                                                              fontWeight: FontWeight.bold,
                                                              color: Colors.black),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Padding(
                                                          padding: EdgeInsets.fromLTRB(15, 10, 0, 0),
                                                          child: Align(
                                                            alignment: Alignment.topCenter,
                                                            child: Text(
                                                                'This pizza is best for pizza Lovers',
                                                                style: TextStyle(
                                                                    fontSize: 15, color: Colors.black)),

                                                            /*Text(
                                         'This Pizza is heavily loaded with cheese and extremely loaded with hardcore topings. Highly Recomended',
                                         style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),)*/
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                const Padding(
                                                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                                                  child: Align(
                                                    alignment: Alignment.center,
                                                    child: Text('₹150',
                                                        style: TextStyle(
                                                            fontSize: 17,
                                                            color: Colors.black,
                                                            fontWeight: FontWeight.bold)),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),



                                  ]),
                            ),
                          ),

                          Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(15, 15, 0, 0),
                                  child: Text("Amount Payable", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),),
                                ),
                              ),

                              Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                                  child: Text("₹220", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),)),
                            ],
                          ),
                          Center(
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
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
}
