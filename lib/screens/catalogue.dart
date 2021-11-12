import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/material.dart';
import 'package:mydirectcash/screens/home_guichet.dart';
import 'package:mydirectcash/screens/login.dart';
import 'package:mydirectcash/screens/payement_facture_validate.dart';
import 'package:mydirectcash/screens/payement_marchant_montant.dart';
import 'package:mydirectcash/screens/settings.dart';
import 'package:mydirectcash/utils/colors.dart';
import 'package:mydirectcash/utils/fonts.dart';
import 'package:page_transition/page_transition.dart';

class Catalogue extends StatefulWidget {
  @override
  _CatalogueState createState() => _CatalogueState();
}

class _CatalogueState extends State<Catalogue> {
  Widget produitStockContainer() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: Colors.white),
      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
      child: Stack(
        children: [
          Positioned(
              right: 0,
              child: Container(
                  width: 40,
                  height: 40,
                  color: Colors.red,
                  child: Icon(Icons.close))),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration:
                      BoxDecoration(border: Border.all(color: marronColor)),
                  child: Image.asset(
                    'assets/images/logo-guichet-producteur.png',
                    fit: BoxFit.cover,
                    width: 70,
                  ),
                ),
                Text(
                  'Semence de Cacao',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: marronColor, fontSize: 14, fontFamily: title_font),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Row(
                    children: [
                      Text(
                        'Prix',
                        textAlign: TextAlign.center,
                        style:
                            TextStyle(fontSize: 14, fontFamily: content_font),
                      ),
                      Expanded(
                        child: Text(
                          '20 000 XAF',
                          textAlign: TextAlign.end,
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: title_font,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Text(
                        'Quandtité',
                        textAlign: TextAlign.center,
                        style:
                            TextStyle(fontSize: 14, fontFamily: content_font),
                      ),
                      Expanded(
                        child: Text(
                          '500',
                          textAlign: TextAlign.end,
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: title_font,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: greenColor, width: 1)),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Editer',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: title_font,
                              color: greenColor),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/background.png'),
                    fit: BoxFit.cover)),
            child: Center(
              child: Container(
                color: Colors.grey.shade200,
                child: ListView(
                  children: [
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Container(
                              height: 80,
                              child: Stack(
                                children: [
                                  Image.asset(
                                    'assets/images/logo-guichet-producteur.png',
                                    height: 70,
                                  ),
                                  Positioned(
                                    top: 55,
                                    left: 3,
                                    child: Text(
                                      'GUICHET',
                                      style: TextStyle(
                                          color: marronColor,
                                          fontSize: 15,
                                          fontFamily: title_font),
                                    ),
                                  ),
                                  Positioned(
                                      top: 70,
                                      left: 4,
                                      child: Text(
                                        'PRODUCTEURS',
                                        style: TextStyle(
                                            color: marronColor.withOpacity(0.5),
                                            fontSize: 8.8,
                                            fontWeight: FontWeight.w200,
                                            fontFamily: content_font),
                                      ))
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: 40,
                            height: 100,
                            color: Colors.transparent,
                            child: Stack(children: [
                              Positioned(
                                  top: 28,
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              type: PageTransitionType
                                                  .rightToLeft,
                                              child: HomeGuichet()));
                                    },
                                    child: Icon(Icons.home,
                                        color: marronColor, size: 35),
                                  ))
                            ]),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.arrow_back,
                              size: 20,
                              color: greenColor,
                            ),
                          ),
                          SizedBox(width: 20),
                          Expanded(
                            child: Text('Catalogue de produits',
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: title_font,
                                    color: greenColor,
                                    fontWeight: FontWeight.w500)),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 40,
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                  border: Border.all(color: blueColor),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.search,
                                    size: 20,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                      child: TextFormField(
                                          keyboardType: TextInputType.text,
                                          style: TextStyle(
                                              fontFamily: content_font,
                                              fontSize: 14),
                                          textAlign: TextAlign.start,
                                          decoration: InputDecoration(
                                              border: InputBorder.none,
                                              hintText: 'Rechercher',
                                              hintStyle: TextStyle(
                                                  fontFamily: content_font,
                                                  color: Colors.grey.shade500,
                                                  fontSize: 14)))),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 10),
                              child: Row(
                                children: [
                                  Expanded(child: produitStockContainer()),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(child: produitStockContainer())
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: 10),
                              child: Row(
                                children: [
                                  Expanded(child: produitStockContainer()),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(child: produitStockContainer())
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Expanded(child: produitStockContainer()),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(child: produitStockContainer())
                                ],
                              ),
                            )
                          ],
                        ) /* GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithMaxCrossAxisExtent(
                                  maxCrossAxisExtent: 350,
                                  childAspectRatio: 3 / 2,
                                  crossAxisSpacing: 8,
                                  mainAxisSpacing: 15),
                          itemCount: 4,
                          itemBuilder: (BuildContext ctx, index) {
                            return produitStockContainer();
                          }),*/
                        ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            )));
  }
}
