import 'package:country_list_pick/country_list_pick.dart';
import 'package:country_list_pick/country_selection_theme.dart';
import 'package:country_list_pick/support/code_country.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mydirectcash/screens/carousel_page.dart';
import 'package:mydirectcash/screens/code_entry.dart';
import 'package:mydirectcash/screens/home.dart';
import 'package:mydirectcash/utils/colors.dart';
import 'package:mydirectcash/utils/fonts.dart';
import 'package:page_transition/page_transition.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 10),
          children: [
            Container(
              margin: EdgeInsets.only(top: 20),
              width: 140,
              height: 140,
              child: Image.asset(
                'assets/images/logo-alliance-transparent.png',
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 25),
              color: Colors.transparent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'MyDirectCash Mobile',
                    style: TextStyle(
                        fontFamily: title_font,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  Text(
                    'AnyTime, AnyWhere, AnyPhone',
                    style: TextStyle(fontFamily: content_font, fontSize: 12),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  style: TextStyle(fontFamily: content_font, fontSize: 14),
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                      hintText: 'Prenoms',
                      hintStyle: TextStyle(
                          fontFamily: content_font,
                          color: Colors.grey.shade500,
                          fontSize: 14)),
                )),
            Container(
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  style: TextStyle(fontFamily: content_font, fontSize: 14),
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.visibility,
                        size: 16,
                      ),
                      hintText: 'Mot de passe',
                      hintStyle: TextStyle(
                          fontFamily: content_font,
                          color: Colors.grey.shade500,
                          fontSize: 14)),
                )),
            SizedBox(
              height: 40,
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
                        onPressed: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                  type: PageTransitionType.rightToLeft,
                                  child: Home()));
                        },
                        child: Text(
                          'Valider',
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
                    Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.rightToLeft,
                            child: CodeEntry()));
                  },
                  child: Text("Créer un compte",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: content_font,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: blueColor))),
            ),
            SizedBox(
              height: 35,
            ),
            Container(
              child: Row(
                children: [
                  Expanded(child: Container(height: 2, color: blueColor)),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 8),
                    child: Text("Ou",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: content_font,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        )),
                  ),
                  Expanded(child: Container(height: 2, color: blueColor))
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
              margin: EdgeInsets.symmetric(horizontal: 25),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.indigo.withOpacity(0.2),
              ),
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/ico-emprunte.png',
                    width: 65,
                  ),
                  Text("Scannez votre emprunte",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: content_font,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
