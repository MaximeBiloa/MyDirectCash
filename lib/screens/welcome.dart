import 'package:flutter/material.dart';
import 'package:mydirectcash/screens/carousel_page.dart';
import 'package:mydirectcash/utils/colors.dart';
import 'package:mydirectcash/utils/fonts.dart';
import 'package:page_transition/page_transition.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
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
            color: Colors.white,
            image: DecorationImage(
                image: AssetImage('assets/images/background.png'),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 2.2,
              padding: EdgeInsets.only(bottom: 50),
              width: MediaQuery.of(context).size.width,
              color: Colors.transparent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/logo-alliance-transparent.png',
                        width: 80,
                      ),
                      Container(
                        color: Colors.transparent,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'MyDirectCash Mobile',
                              style: TextStyle(
                                  fontFamily: title_font,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'AnyTime, AnyWhere, AnyPhone',
                              style: TextStyle(
                                  fontFamily: content_font, fontSize: 12),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 2,
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              color: Colors.transparent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset(
                        'assets/images/ico-suivant.png',
                        width: 50,
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                PageTransition(
                                    type: PageTransitionType.rightToLeft,
                                    child: CarouselPage()));
                          },
                          child: Text(
                            'Commencer',
                            style: TextStyle(
                                color: blueColor,
                                fontSize: 15,
                                fontFamily: content_font),
                          ))
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
