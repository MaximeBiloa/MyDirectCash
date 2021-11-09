import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/material.dart';
import 'package:mydirectcash/screens/login.dart';
import 'package:mydirectcash/screens/settings.dart';
import 'package:mydirectcash/utils/colors.dart';
import 'package:mydirectcash/utils/fonts.dart';
import 'package:page_transition/page_transition.dart';

class EnvoiDirectCashPassword extends StatefulWidget {
  const EnvoiDirectCashPassword({Key? key}) : super(key: key);

  @override
  _EnvoiDirectCashPasswordState createState() =>
      _EnvoiDirectCashPasswordState();
}

class _EnvoiDirectCashPasswordState extends State<EnvoiDirectCashPassword> {
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
                margin: EdgeInsets.only(top: 10),
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
                    Text('Achat de crédit',
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
                height: 50,
              ),
              Container(
                child: Column(
                  children: [
                    Text(
                        'Vous allez faire une recharge de 20 000,0 XAF au numéro 6 98 ** ** **, frais de 150 XAF. Montant total à débiter 20 150 XAF.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 12.5,
                            fontFamily: content_font,
                            fontWeight: FontWeight.w500)),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                  margin: EdgeInsets.only(top: 20),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    style: TextStyle(fontFamily: content_font, fontSize: 13),
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
                            fontSize: 13)),
                  )),
              SizedBox(height: 50),
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
                            Navigator.pop(context);
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
                height: 30,
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
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: blueColor))),
              )
            ],
          ),
        ));
  }
}
