import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


//Stateless Widget Example
import 'package:foodcano/canteen/BottomNavigation/CategoriesDescription.dart';
import 'package:google_fonts/google_fonts.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.height,
      color: Color(0xfff3e8ca),
      child: Column(
        children: [
          Flexible(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/image/5r.PNG'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),

          Flexible(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(40)
                  ),
                  color: Colors.white
              ),
              child: Scaffold(
                backgroundColor: Colors.transparent,
                body: Column (
                  children: [
                    Container(

                      margin: EdgeInsets.fromLTRB(25, 15, 0, 0),
                      child: Text(
                        'Canteen Menu!',
                        style: GoogleFonts.fredokaOne(
                          fontSize: 38,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(30, 25, 0, 0),
                              child: Text(
                                'Pick up From below food Categories',
                                style: GoogleFonts.comicNeue(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    InkWell(
                                      onTap: (){
                                        Navigator.push(context,MaterialPageRoute(builder: (context) => CategoriesDescription(text: "Thali")));
                                      },
                                      child: Padding(
                                        padding: EdgeInsets.fromLTRB(30, 30, 0, 0),
                                        child: Row(
                                          children: [
                                            Container(
                                                height: 270,
                                                width: 180,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(18),
                                                  image: DecorationImage(
                                                    image: AssetImage('assets/image/thali.gif'), fit: BoxFit.cover,
                                                    colorFilter:
                                                    ColorFilter.mode(Colors.black.withOpacity(0.3),
                                                        BlendMode.dstATop),),
                                                ),

                                                child: Column(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                                                      child: Text(
                                                        'Thali',
                                                        textAlign: TextAlign.center,
                                                        style: GoogleFonts.comicNeue(
                                                            fontSize: 30,
                                                            color: Colors.black,
                                                            fontWeight: FontWeight.bold
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:EdgeInsets.fromLTRB(0, 80, 0, 0),
                                                      child: Container(
                                                          height: 100,
                                                          width: 160,
                                                          decoration: BoxDecoration(
                                                            borderRadius: BorderRadius.circular(18),
                                                            image: DecorationImage(
                                                              image: AssetImage('assets/image/thali.gif'), fit: BoxFit.cover,
                                                            ),
                                                          )),
                                                    )
                                                  ],
                                                )

                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                     onTap: (){
                                        Navigator.push(context,MaterialPageRoute(builder: (context) => CategoriesDescription(text: "Fast Food")));},
                                      child: Padding(
                                        padding: EdgeInsets.fromLTRB(30, 30, 0, 0),
                                        child: Row(
                                          children: [
                                            Container(
                                                height: 270,
                                                width: 180,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(18),
                                                  image: DecorationImage(
                                                    image: AssetImage('assets/image/16.gif'), fit: BoxFit.cover,
                                                    colorFilter:
                                                    ColorFilter.mode(Colors.black.withOpacity(0.2),
                                                        BlendMode.dstATop),),
                                                ),

                                                child: Column(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                                                      child: Text(
                                                        'Fast Food',
                                                        textAlign: TextAlign.center,
                                                        style: GoogleFonts.comicNeue(
                                                            fontSize: 30,
                                                            color: Colors.black,
                                                            fontWeight: FontWeight.bold
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:EdgeInsets.fromLTRB(0, 80, 0, 0),
                                                      child: Container(
                                                          height: 100,
                                                          width: 160,
                                                          decoration: BoxDecoration(
                                                            borderRadius: BorderRadius.circular(18),
                                                            image: DecorationImage(
                                                              image: AssetImage('assets/image/16.gif'), fit: BoxFit.cover,
                                                            ),
                                                          )),
                                                    )
                                                  ],
                                                )

                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                     onTap: (){
                                        Navigator.push(context,MaterialPageRoute(builder: (context) => CategoriesDescription(text: "Pizza")));},
                                      child: Padding(
                                        padding: EdgeInsets.fromLTRB(30, 30, 0, 0),
                                        child: Row(
                                          children: [
                                            Container(
                                                height: 270,
                                                width: 180,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(18),
                                                  image: DecorationImage(
                                                    image: AssetImage('assets/image/ipizza.gif'), fit: BoxFit.cover,
                                                    colorFilter:
                                                    ColorFilter.mode(Colors.black.withOpacity(0.3),
                                                        BlendMode.dstATop),),
                                                ),

                                                child: Column(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                                                      child: Text(
                                                        'Pizza',
                                                        textAlign: TextAlign.center,
                                                        style: GoogleFonts.comicNeue(
                                                            fontSize: 32,
                                                            color: Colors.black,
                                                            fontWeight: FontWeight.bold
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:EdgeInsets.fromLTRB(0, 80, 0, 0),
                                                      child: Container(
                                                          height: 100,
                                                          width: 160,
                                                          decoration: BoxDecoration(
                                                            borderRadius: BorderRadius.circular(18),
                                                            image: DecorationImage(
                                                              image: AssetImage('assets/image/ipizza.gif'), fit: BoxFit.cover,
                                                            ),
                                                          )),
                                                    )
                                                  ],
                                                )

                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                     onTap: (){
                                        Navigator.push(context,MaterialPageRoute(builder: (context) => CategoriesDescription(text: "Burger")));},
                                      child: Padding(
                                        padding: EdgeInsets.fromLTRB(30, 30, 0, 0),
                                        child: Row(
                                          children: [
                                            Container(
                                                height: 270,
                                                width: 180,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(18),
                                                  color: Color(0xfff8f5f5),
                                                  image: DecorationImage(
                                                    image: AssetImage('assets/image/burger.gif'), fit: BoxFit.cover,
                                                    colorFilter:
                                                    ColorFilter.mode(Colors.black.withOpacity(0.3),
                                                        BlendMode.dstATop),),
                                                ),

                                                child: Column(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                                                      child: Text(
                                                        'Burger',
                                                        textAlign: TextAlign.center,
                                                        style: GoogleFonts.comicNeue(
                                                            fontSize: 32,
                                                            color: Colors.black,
                                                            fontWeight: FontWeight.bold
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:EdgeInsets.fromLTRB(0, 80, 0, 0),
                                                      child: Container(
                                                          height: 100,
                                                          width: 160,
                                                          decoration: BoxDecoration(
                                                            borderRadius: BorderRadius.circular(18),
                                                            color: Color(0xfffcbebe),
                                                            image: DecorationImage(
                                                              image: AssetImage('assets/image/burger.gif'), fit: BoxFit.cover,
                                                            ),
                                                          )),
                                                    )
                                                  ],
                                                )

                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                     onTap: (){
                                        Navigator.push(context,MaterialPageRoute(builder: (context) => CategoriesDescription(text: "Dosa")));},
                                      child: Padding(
                                        padding: EdgeInsets.fromLTRB(30, 30, 0, 0),
                                        child: Row(
                                          children: [
                                            Container(
                                                height: 270,
                                                width: 180,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(18),
                                                  image: DecorationImage(
                                                    image: AssetImage('assets/image/12.png'), fit: BoxFit.cover,
                                                    colorFilter:
                                                    ColorFilter.mode(Colors.black.withOpacity(0.3),
                                                        BlendMode.dstATop),),
                                                ),

                                                child: Column(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                                                      child: Text(
                                                        'Dosa',
                                                        textAlign: TextAlign.center,
                                                        style: GoogleFonts.comicNeue(
                                                            fontSize: 32,
                                                            color: Colors.black,
                                                            fontWeight: FontWeight.bold
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:EdgeInsets.fromLTRB(0, 80, 0, 0),
                                                      child: Container(
                                                          height: 100,
                                                          width: 160,
                                                          decoration: BoxDecoration(
                                                            borderRadius: BorderRadius.circular(18),
                                                            image: DecorationImage(
                                                              image: AssetImage('assets/image/12.png'), fit: BoxFit.cover,
                                                            ),
                                                          )),
                                                    )
                                                  ],
                                                )

                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                     onTap: (){
                                        Navigator.push(context,MaterialPageRoute(builder: (context) => CategoriesDescription(text: "Chinese")));},
                                      child: Padding(
                                        padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
                                        child: Row(
                                          children: [
                                            Container(
                                                height: 270,
                                                width: 180,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(18),
                                                  image: DecorationImage(
                                                    image: AssetImage('assets/image/chinesee.gif'), fit: BoxFit.cover,
                                                    colorFilter:
                                                    ColorFilter.mode(Colors.black.withOpacity(0.3),
                                                        BlendMode.dstATop),),
                                                ),

                                                child: Column(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                                                      child: Text(
                                                        'Chinese',
                                                        textAlign: TextAlign.center,
                                                        style: GoogleFonts.comicNeue(
                                                            fontSize: 32,
                                                            color: Colors.black,
                                                            fontWeight: FontWeight.bold
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:EdgeInsets.fromLTRB(0, 80, 0, 0),
                                                      child: Container(
                                                          height: 100,
                                                          width: 160,
                                                          decoration: BoxDecoration(
                                                            borderRadius: BorderRadius.circular(18),
                                                            image: DecorationImage(
                                                              image: AssetImage('assets/image/chinesee.gif'), fit: BoxFit.cover,
                                                            ),
                                                          )),
                                                    )
                                                  ],
                                                )

                                            )
                                          ],
                                        ),
                                      ),
                                    ),

                                  ],
                                )
                            ),


                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
