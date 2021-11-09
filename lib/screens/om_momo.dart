import 'dart:ui';

import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/material.dart';
import 'package:mydirectcash/screens/achat_credit_password.dart';
import 'package:mydirectcash/screens/login.dart';
import 'package:mydirectcash/screens/settings.dart';
import 'package:mydirectcash/utils/colors.dart';
import 'package:mydirectcash/utils/fonts.dart';
import 'package:page_transition/page_transition.dart';

class OmMoMo extends StatefulWidget {
  @override
  _OmMoMoState createState() => _OmMoMoState();
}

class _OmMoMoState extends State<OmMoMo> {
  bool isOm = true;
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
            children: [
              Container(
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: 40,
                      height: 50,
                      color: Colors.transparent,
                      child: Stack(children: [
                        Positioned(
                            top: 12,
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
                height: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25),
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
                        color: blueColor,
                      ),
                    ),
                    SizedBox(width: 50),
                    Text('OM / MoMo',
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: title_font,
                            color: blueColor,
                            fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: Row(
                  children: [
                    Expanded(
                        child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isOm = true;
                        });
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    'assets/images/om.png',
                                  ),
                                  fit: BoxFit.cover)),
                          child: new ClipRect(
                              child: new BackdropFilter(
                            filter: new ImageFilter.blur(
                                sigmaX: isOm ? 0.0 : 2.0,
                                sigmaY: isOm ? 0.0 : 2.0),
                            child: new Container(
                              padding: EdgeInsets.all(0),
                              decoration: new BoxDecoration(
                                  color: Colors.black.withOpacity(0.2)),
                              child: new Center(
                                child: new Text('',
                                    style:
                                        Theme.of(context).textTheme.headline2),
                              ),
                            ),
                          ))),
                    )),
                    Expanded(
                        child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isOm = false;
                        });
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    'assets/images/mtn_momo.png',
                                  ),
                                  fit: BoxFit.cover)),
                          child: new ClipRect(
                              child: new BackdropFilter(
                            filter: new ImageFilter.blur(
                                sigmaX: !isOm ? 0.0 : 2.0,
                                sigmaY: !isOm ? 0.0 : 2.0),
                            child: new Container(
                              padding: EdgeInsets.all(0),
                              decoration: new BoxDecoration(
                                  color: Colors.black.withOpacity(0.2)),
                              child: new Center(
                                child: new Text('',
                                    style:
                                        Theme.of(context).textTheme.headline2),
                              ),
                            ),
                          ))),
                    )),
                  ],
                ),
              ),
              SizedBox(height: 40),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      isOm
                          ? 'assets/images/orange_money.jpeg'
                          : 'assets/images/mobile_money.png',
                      width: 70,
                    ),
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
                              'Choisissez le type de transaction',
                              style: TextStyle(
                                  fontFamily: title_font,
                                  color: blueColor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    child: Row(
                                      children: [
                                        Text('Dépôt',
                                            style: TextStyle(
                                                fontFamily: content_font)),
                                        Radio(
                                            value: false,
                                            groupValue: true,
                                            onChanged: (value) {}),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 30),
                                  Container(
                                    child: Row(
                                      children: [
                                        Text('Retrait',
                                            style: TextStyle(
                                                fontFamily: content_font)),
                                        Radio(
                                            value: false,
                                            groupValue: true,
                                            onChanged: (value) {}),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 30),
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    children: [
                      TextFormField(
                          keyboardType: TextInputType.text,
                          style:
                              TextStyle(fontFamily: content_font, fontSize: 13),
                          textAlign: TextAlign.start,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Saisissez le numéro bénéficiaire',
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
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    children: [
                      TextFormField(
                          keyboardType: TextInputType.text,
                          style:
                              TextStyle(fontFamily: content_font, fontSize: 13),
                          textAlign: TextAlign.start,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Saisissez le montant',
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
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    children: [
                      TextFormField(
                          keyboardType: TextInputType.text,
                          style:
                              TextStyle(fontFamily: content_font, fontSize: 13),
                          textAlign: TextAlign.start,
                          decoration: InputDecoration(
                              suffixIcon: Icon(
                                Icons.visibility,
                                size: 16,
                              ),
                              border: InputBorder.none,
                              hintText: 'Mot de passe',
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
              SizedBox(height: 50),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25),
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
                                    child: AchatCreditPassword()));
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
            ],
          ),
        ));
  }
}
