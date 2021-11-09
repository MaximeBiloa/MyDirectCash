import 'package:flutter/material.dart';
import 'package:mydirectcash/screens/carousel_page.dart';
import 'package:mydirectcash/screens/components/bottom_navigation.dart';
import 'package:mydirectcash/screens/components/last_transactions.dart';
import 'package:mydirectcash/screens/settings.dart';
import 'package:mydirectcash/screens/transactions.dart';
import 'package:mydirectcash/utils/colors.dart';
import 'package:mydirectcash/utils/fonts.dart';
import 'package:page_transition/page_transition.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
                              top: 30,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      PageTransition(
                                          type: PageTransitionType.rightToLeft,
                                          child: Settings()));
                                },
                                child: Image.asset(
                                  'assets/images/ico-parametre.png',
                                  width: 40,
                                ),
                              ))
                        ]),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 38,
                        child: CircleAvatar(
                          radius: 37,
                          backgroundImage: AssetImage(
                              'assets/images/pexels-anna-nekrashevich-6802046.jpg'),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 70,
                        color: Colors.transparent,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'John DOE',
                              style: TextStyle(
                                  color: blueColor,
                                  fontSize: 14,
                                  fontFamily: title_font),
                            ),
                            Text(
                              '6 72 44 33 20',
                              style: TextStyle(
                                  fontSize: 12, fontFamily: content_font),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Divider(
                  height: 1,
                  color: blueColor,
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  color: Colors.transparent,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Solde courant',
                        textAlign: TextAlign.center,
                        style:
                            TextStyle(fontSize: 14, fontFamily: content_font),
                      ),
                      Text(
                        '0 XAF',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 34, fontFamily: title_font),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  color: Colors.transparent,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            showDollar = true;
                          });
                        },
                        child: CircleAvatar(
                          backgroundColor: showDollar ? blueColor : Colors.grey,
                          radius: 20,
                          child: CircleAvatar(
                              radius: 19,
                              backgroundColor:
                                  showDollar ? Colors.white : Colors.grey,
                              child: Icon(
                                Icons.attach_money,
                                color: showDollar ? blueColor : Colors.white,
                                size: 20,
                              )),
                        ),
                      ),
                      SizedBox(width: 20),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            showDollar = false;
                          });
                        },
                        child: CircleAvatar(
                          backgroundColor:
                              !showDollar ? blueColor : Colors.grey,
                          radius: 20,
                          child: CircleAvatar(
                              radius: 19,
                              backgroundColor:
                                  !showDollar ? Colors.white : Colors.grey,
                              child: Icon(
                                Icons.euro,
                                color: !showDollar ? blueColor : Colors.white,
                                size: 20,
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  color: Colors.transparent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Mon solde en Dollar',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 14, fontFamily: content_font),
                          ),
                          Container(
                              width: 140,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 2),
                              decoration: BoxDecoration(
                                  border: Border.all(color: blueColor),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Text(
                                showDollar ? '0.0 \$' : '0.0 €',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                    fontSize: 12, fontFamily: content_font),
                              ))
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Divider(
                  height: 2,
                  color: blueColor,
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Wrap(
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: blueColor,
                                padding: EdgeInsets.symmetric(horizontal: 50)),
                            onPressed: () {},
                            child: Text(
                              'Recharger mon compte',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: content_font),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                LastTransaction()
              ],
            )),
            BottomNavigation()
          ],
        ),
      ),
    );
  }
}
