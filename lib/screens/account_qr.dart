import 'package:flutter/material.dart';
import 'package:mydirectcash/screens/achats.dart';
import 'package:mydirectcash/screens/carousel_page.dart';
import 'package:mydirectcash/screens/components/bottom_navigation.dart';
import 'package:mydirectcash/screens/components/last_transactions.dart';
import 'package:mydirectcash/screens/guichet_achat_produit.dart';
import 'package:mydirectcash/screens/home_guichet.dart';
import 'package:mydirectcash/screens/settings.dart';
import 'package:mydirectcash/screens/transactions.dart';
import 'package:mydirectcash/utils/colors.dart';
import 'package:mydirectcash/utils/fonts.dart';
import 'package:page_transition/page_transition.dart';

class AccountQR extends StatefulWidget {
  @override
  _AccountQRState createState() => _AccountQRState();
}

class _AccountQRState extends State<AccountQR> {
  bool showDollar = true;
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
            Expanded(
                child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              children: [
                Container(
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
                  height: 120,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 20),
                        child: Container(
                          child: Row(
                            children: [
                              Container(
                                height: 70,
                                color: Colors.transparent,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      'Noms',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: content_font),
                                    ),
                                    Text(
                                      'Identifiant',
                                      style:
                                          TextStyle(fontFamily: content_font),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 70,
                                color: Colors.transparent,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      'John DOE',
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: greenColor,
                                          fontFamily: title_font),
                                    ),
                                    Text(
                                      'OU672443320',
                                      style: TextStyle(
                                          fontFamily: content_font,
                                          color: greenColor),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Icon(Icons.qr_code, size: 300),
                ),
                SizedBox(
                  height: 35,
                ),
                Container(
                  child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text("Retour",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: content_font,
                              //fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: marronColor))),
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
