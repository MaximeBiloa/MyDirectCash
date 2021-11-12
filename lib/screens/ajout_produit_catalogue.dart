import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/material.dart';
import 'package:mydirectcash/screens/achat_credit_password.dart';
import 'package:mydirectcash/screens/components/success_ajout_produit_component%20.dart';
import 'package:mydirectcash/screens/home_guichet.dart';
import 'package:mydirectcash/screens/login.dart';
import 'package:mydirectcash/screens/settings.dart';
import 'package:mydirectcash/utils/colors.dart';
import 'package:mydirectcash/utils/fonts.dart';
import 'package:page_transition/page_transition.dart';

class AjoutProduitCatalogue extends StatefulWidget {
  const AjoutProduitCatalogue({Key? key}) : super(key: key);

  @override
  _AjoutProduitCatalogueState createState() => _AjoutProduitCatalogueState();
}

class _AjoutProduitCatalogueState extends State<AjoutProduitCatalogue> {
  String? countryName = 'Choisissez le pays de destination';
  String? coupon = 'Choisissez le coupon crédit';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 25),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/background.png'),
                  fit: BoxFit.cover)),
          child: ListView(
            children: [
              Container(
                //margin: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
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
                                        type: PageTransitionType.rightToLeft,
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
              SizedBox(
                height: 20,
              ),
              Container(
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
                    Text('Ajout de produit au catalogue',
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: title_font,
                            color: greenColor,
                            fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.transparent,
                ),
                padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                child: Stack(
                  //alignment: Alignment.centerLeft,
                  children: [
                    Positioned(
                        bottom: 0,
                        left: 87,
                        child: CircleAvatar(
                          radius: 17,
                          backgroundColor: greenColor,
                          child: CircleAvatar(
                            radius: 16,
                            backgroundColor: Colors.white,
                            child: Icon(Icons.add, color: greenColor),
                          ),
                        )),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 0),
                      decoration:
                          BoxDecoration(border: Border.all(color: greenColor)),
                      child: Image.asset(
                        'assets/images/logo-guichet-producteur.png',
                        fit: BoxFit.cover,
                        width: 120,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Column(
                    children: [
                      TextFormField(
                          keyboardType: TextInputType.text,
                          style:
                              TextStyle(fontFamily: content_font, fontSize: 13),
                          textAlign: TextAlign.start,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Noms du produits',
                              hintStyle: TextStyle(
                                  fontFamily: content_font,
                                  color: Colors.grey,
                                  fontSize: 13))),
                      Divider(
                        height: 1.5,
                        color: blueColor,
                      ),
                    ],
                  )),
              Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Column(
                    children: [
                      TextFormField(
                          keyboardType: TextInputType.text,
                          style:
                              TextStyle(fontFamily: content_font, fontSize: 13),
                          textAlign: TextAlign.start,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Prix unitaire',
                              hintStyle: TextStyle(
                                  fontFamily: content_font,
                                  color: Colors.grey,
                                  fontSize: 13))),
                      Divider(
                        height: 1.5,
                        color: blueColor,
                      ),
                    ],
                  )),
              Container(
                  margin: EdgeInsets.only(top: 20),
                  color: Colors.transparent,
                  child: Column(
                    children: [
                      Container(
                          child: Row(
                        children: [
                          Expanded(
                            child: Text('Unité de mésure',
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 14)),
                          ),
                          Container(
                            padding: EdgeInsets.only(right: 15),
                            child: DropdownButton<String>(
                              isExpanded: false,
                              underline: Container(),
                              icon: Icon(
                                Icons.expand_more,
                                color: marronColor,
                              ),
                              items: <String>[
                                '',
                                '',
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(
                                    value,
                                    style: new TextStyle(
                                      fontFamily: content_font,
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                );
                              }).toList(),
                              onChanged: (value) {
                                //Le coeur du changement de la traduction de l'app
                                setState(() {
                                  //print(currentLang);
                                });
                              },
                            ),
                          ),
                        ],
                      )),
                      Divider(
                        height: 1.5,
                        color: blueColor,
                      ),
                    ],
                  )),
              Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Column(
                    children: [
                      TextFormField(
                          keyboardType: TextInputType.text,
                          style:
                              TextStyle(fontFamily: content_font, fontSize: 13),
                          textAlign: TextAlign.start,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Quantité en stock',
                              hintStyle: TextStyle(
                                  fontFamily: content_font,
                                  color: Colors.grey,
                                  fontSize: 13))),
                      Divider(
                        height: 1.5,
                        color: blueColor,
                      ),
                    ],
                  )),
              SizedBox(height: 30),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Wrap(
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: marronColor,
                              padding: EdgeInsets.symmetric(horizontal: 50)),
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return SuccessAjoutProduitComponent();
                                });
                          },
                          child: Text(
                            'Soumettre le produit',
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Container(
                child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Text("Annuler",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: content_font,
                            //fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: marronColor))),
              ),
            ],
          ),
        ));
  }
}
