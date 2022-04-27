import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class AddnewItem extends StatelessWidget {
  const AddnewItem({Key? key}) : super(key: key);

  static const String _title = 'Add a New Item';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: const AddnewItemUI(),
      ),
    );
  }
}

class AddnewItemUI extends StatefulWidget {
  const AddnewItemUI({Key? key}) : super(key: key);

  @override
  _AddnewItemUIState createState() => _AddnewItemUIState();
}

class _AddnewItemUIState extends State<AddnewItemUI> {
  bool _obscureText = true;
  TextEditingController itemnameController = TextEditingController();
  TextEditingController itemdescriptionController = TextEditingController();
  TextEditingController itempriceController = TextEditingController();
  PickedFile? imageFile;
  final ImagePicker picker = ImagePicker();


  var selecteditem = "General";
  String dropdownvalue = 'General';

  var items = ['General', 'South Indian', 'Chinese', 'Pizza', 'BreakFast', 'Dabeli', 'Vada-pao', 'Sandwiches'];

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    var lightgrey = Color(0xAFEAE8E8);
    var commonmargin= 20;

    return Container(
      color: Color(0xff93c572),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:EdgeInsets.fromLTRB(22, 40, 0, 0),
            child: Text(
              'Add New Item !!',
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
                  padding: const EdgeInsets.all(10),

                  child: Column(
                    children: [
                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 15, 10, 0),
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                                    child: Container(
                                      margin: EdgeInsets.fromLTRB(commonmargin.toDouble(), 0, 0, 0),
                                      child: TextField(
                                        keyboardType: TextInputType.name,
                                        controller: itemnameController,
                                        decoration: InputDecoration(
                                          labelText: 'Item Name',
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(25),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),

                                Container(
                                  width: size.width * 0.8,
                                  height: 200,
                                  margin: EdgeInsets.fromLTRB(0, 15, 0, 0),

                                  padding: const EdgeInsets.all(10),
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                                    child: Container(
                                      margin: EdgeInsets.fromLTRB(commonmargin.toDouble(), 0, 0, 0),
                                      child: TextField(
                                        keyboardType: TextInputType.multiline,
                                        maxLines: 6,
                                        controller: itemdescriptionController,
                                        decoration: InputDecoration(
                                          labelText: 'Item Description',
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(25),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),

                                Container(
                                    margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20)),
                                    child: Container(
                                      height: 70,
                                      alignment: Alignment.centerLeft,
                                      margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                                      child: Row(
                                        children: [
                                          const Expanded(
                                              child: Text(
                                                "Select Food Category: ",
                                                style: TextStyle(fontSize: 16, color: Colors.black),
                                              )
                                          ),
                                          Expanded(
                                            child: DropdownButton(
                                              value: dropdownvalue,
                                              icon: const Icon(Icons.keyboard_arrow_down,
                                                  textDirection: TextDirection.rtl),
                                              // Array list of items
                                              items: items.map((String items) {
                                                return DropdownMenuItem(
                                                  value: items,
                                                  child: Text(items),
                                                );
                                              }).toList(),
                                              // After selecting the desired option,it will
                                              // change button value to selected value
                                              onChanged: (String? newValue) {
                                                setState(() {
                                                  dropdownvalue = newValue!;
                                                  this.selecteditem = newValue!;
                                                });
                                              },
                                            ),
                                          ),
                                        ],),
                                    )),

                                Container(
                                    margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20)),
                                    child: Container(
                                      height: 70,
                                      alignment: Alignment.centerLeft,
                                      margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                                      child: Row(
                                        children: [
                                          const Padding(
                                            padding: EdgeInsets.fromLTRB(0,15, 0, 0),
                                            child: Text(
                                              "₹ ",
                                              style: TextStyle(fontSize: 16, color: Colors.black),
                                            ),
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsets.fromLTRB(0, 0, 25, 0),
                                              child: TextField(
                                                keyboardType: TextInputType.number,
                                                controller: itempriceController,
                                                decoration: const InputDecoration(
                                                  labelText: 'Item Price',
                                                ),
                                              ),
                                            ) ,
                                          ),
                                        ],),
                                    )),


                                const SizedBox(
                                  height: 15,
                                ),

                                Container(
                                    margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),),
                                    child: Container(
                                      height: 70,
                                      alignment: Alignment.centerLeft,
                                      margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                                      child: Padding(
                                        padding: EdgeInsets.fromLTRB(0,15, 0, 15),
                                        child: Row(
                                          children: [
                                            const Padding(
                                              padding: EdgeInsets.fromLTRB(0,0, 0, 0),
                                              child: Text(
                                                "Provide Item Images: ",
                                                style: TextStyle(fontSize: 16, color: Colors.black),
                                              ),
                                            ),
                                            Expanded(child: imageProfile()),
                                          ],),
                                      ),
                                    )),



                                InkWell(
                                  onTap: (){
                                    print(itemnameController.text);
                                    print(itemdescriptionController.text);
                                    print(itempriceController.text);
                                    print(selecteditem.toString());
                                  },
                                  child: Center(
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
    );
  }






  void takePhoto(ImageSource source) async {
    final pickedFile = await picker.getImage(
      source: source,
    );
    setState(() {
      imageFile = pickedFile!;

    });
  }

  Widget imageProfile()
  {
    return  Center(
      child: Stack(
        children: [
          /*CircleAvatar(
              radius: 80.0,
              backgroundImage: (imageFile!=null)?FileImage(File(imageFile!.path)):null

            *//*NetworkImage(
                  "https://images.unsplash.com/photo-1531891570158-e71b35a485bc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80")*//*
          ),*/
          
          InkWell(
            onTap: () {
              showModalBottomSheet<void>(
                // context and builder are
                // required properties in this widget
                context: context,
                builder: (BuildContext context) {
                  // we set up a container inside which
                  // we create center column and display text
                  return Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Text(
                            'Select Item Image from..',
                            style: TextStyle(
                                fontSize: 20, color: Colors.black),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: FlatButton.icon(
                                  icon: const Icon(Icons.camera),
                                  onPressed: () {
                                    takePhoto(ImageSource.camera);
                                    Navigator.pop(context);
                                  },
                                  label: const Text('Camera'),
                                ),
                              ),
                              Expanded(
                                child: FlatButton.icon(
                                  icon: const Icon(Icons.image),
                                  onPressed: () {
                                    takePhoto(ImageSource.gallery);
                                    Navigator.pop(context);
                                  },
                                  label: const Text('Gallery'),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              );
            },
            child: const Icon(
              Icons.folder,
              color: Color(0xfffeb74d),
              size: 49.0,
            ),
          )
        ],
      ),
    );
  }
}