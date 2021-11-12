import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/material.dart';
import 'package:mydirectcash/screens/fournisseur_page.dart';
import 'package:mydirectcash/screens/home_guichet.dart';
import 'package:mydirectcash/screens/login.dart';
import 'package:mydirectcash/screens/payement_facture_validate.dart';
import 'package:mydirectcash/screens/payement_marchant_montant.dart';
import 'package:mydirectcash/screens/settings.dart';
import 'package:mydirectcash/utils/colors.dart';
import 'package:mydirectcash/utils/fonts.dart';
import 'package:page_transition/page_transition.dart';

class ListeFournisseurs extends StatefulWidget {
  ListeFournisseurs({required this.fournisseurs});
  dynamic fournisseurs;
  @override
  _ListeFournisseursState createState() => _ListeFournisseursState();
}

class _ListeFournisseursState extends State<ListeFournisseurs> {
  Widget fournisseurContainer() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            PageTransition(
                type: PageTransitionType.rightToLeft,
                child: FournisseurPage(
                  fournisseur: {
                    'name': 'ABEGA Leopold',
                  },
                )));
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
        ),
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                width: 70,
                height: 70,
                color: Colors.blue.withOpacity(0.1),
                child: Icon(
                  Icons.person,
                  size: 50,
                )),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: Container(
                color: Colors.transparent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'ABEGA leopold',
                      style: TextStyle(
                          fontFamily: title_font,
                          color: greenColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      'fournisseur de sémence',
                      style: TextStyle(
                          fontFamily: content_font,
                          fontSize: 12,
                          color: Colors.grey.shade800,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
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
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
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
                Expanded(
                  child: Container(
                    color: Colors.grey.shade100,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 25, vertical: 10),
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
                              SizedBox(width: 50),
                              Text('Liste de fournisseurs',
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
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
                                                      color:
                                                          Colors.grey.shade500,
                                                      fontSize: 14)))),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Expanded(
                          child: Container(
                            child: ListView.builder(
                                itemCount: 20,
                                itemBuilder: (BuildContext context, int index) {
                                  return fournisseurContainer();
                                }),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )));
  }
}
