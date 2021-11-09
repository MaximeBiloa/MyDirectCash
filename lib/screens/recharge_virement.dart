import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/material.dart';
import 'package:mydirectcash/screens/achat_credit_password.dart';
import 'package:mydirectcash/screens/components/error_operation_component.dart';
import 'package:mydirectcash/screens/components/success_operation_component.dart';
import 'package:mydirectcash/screens/envoi_comptedirectcash_password.dart';
import 'package:mydirectcash/screens/envoi_directcash_password.dart';
import 'package:mydirectcash/screens/login.dart';
import 'package:mydirectcash/screens/settings.dart';
import 'package:mydirectcash/utils/colors.dart';
import 'package:mydirectcash/utils/fonts.dart';
import 'package:page_transition/page_transition.dart';

class RechargeVirement extends StatefulWidget {
  const RechargeVirement({Key? key}) : super(key: key);

  @override
  _RechargeVirementState createState() => _RechargeVirementState();
}

class _RechargeVirementState extends State<RechargeVirement> {
  String? countryName = 'Choisissez le pays de destination';
  String? operateur = "Choisissez l'opérateur";
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
                    SizedBox(width: 20),
                    Text('Recharge via Virement bancaire',
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
                  color: Colors.transparent,
                  child: Column(
                    children: [
                      Container(
                          child: Row(
                        children: [
                          Expanded(
                            child: Text('Choisissez votre banque',
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
                                color: Colors.blue,
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
                          keyboardType: TextInputType.number,
                          style:
                              TextStyle(fontFamily: content_font, fontSize: 13),
                          textAlign: TextAlign.start,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Saisissez votre numéro de compte',
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
                          keyboardType: TextInputType.number,
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
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    style: TextStyle(fontFamily: content_font, fontSize: 13),
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.visibility,
                          size: 16,
                        ),
                        hintText: 'Code bancaire',
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
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return ErrorOperationComponent();
                                });
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