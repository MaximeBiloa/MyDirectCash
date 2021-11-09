import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/material.dart';
import 'package:mydirectcash/screens/login.dart';
import 'package:mydirectcash/screens/payement_marchant_validate.dart';
import 'package:mydirectcash/screens/settings.dart';
import 'package:mydirectcash/utils/colors.dart';
import 'package:mydirectcash/utils/fonts.dart';
import 'package:page_transition/page_transition.dart';

class PayementMarchandMontant extends StatefulWidget {
  const PayementMarchandMontant({Key? key}) : super(key: key);

  @override
  _PayementMarchandMontantState createState() =>
      _PayementMarchandMontantState();
}

class _PayementMarchandMontantState extends State<PayementMarchandMontant> {
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
                    Text('Payement marchand',
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
                  margin: EdgeInsets.only(top: 20),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    style: TextStyle(fontFamily: content_font, fontSize: 13),
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                        hintText: 'Veuillez saisir le montant',
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
                            Navigator.push(
                                context,
                                PageTransition(
                                    type: PageTransitionType.rightToLeft,
                                    child: PayementMarchandValidate()));
                          },
                          child: Text(
                            'Suivant',
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
