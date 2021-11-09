import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/material.dart';
import 'package:mydirectcash/screens/achat_credit_password.dart';
import 'package:mydirectcash/screens/login.dart';
import 'package:mydirectcash/screens/settings.dart';
import 'package:mydirectcash/utils/colors.dart';
import 'package:mydirectcash/utils/fonts.dart';
import 'package:page_transition/page_transition.dart';

class AchatCredit extends StatefulWidget {
  const AchatCredit({Key? key}) : super(key: key);

  @override
  _AchatCreditState createState() => _AchatCreditState();
}

class _AchatCreditState extends State<AchatCredit> {
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
                color: Colors.transparent,
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Expanded(
                            child: Text('$countryName',
                                style: TextStyle(
                                    color: countryName ==
                                            'Choisissez le pays de destination'
                                        ? Colors.grey
                                        : Colors.black,
                                    fontSize: 14)),
                          ),
                          CountryListPick(
                              appBar: AppBar(
                                backgroundColor: blueColor,
                                title: Text('Choisir un pays'),
                              ),
                              theme: CountryTheme(
                                isShowFlag: false,
                                isShowTitle: false,
                                isShowCode: false,
                                isDownIcon: true,
                                showEnglishName: false,
                              ),
                              initialSelection: '+237',
                              onChanged: (CountryCode? code) {
                                setState(() {
                                  countryName = code!.name == null
                                      ? 'Choisissez le pays de destination'
                                      : code.name;
                                });
                                print(code!.name);
                              },
                              useUiOverlay: true,
                              useSafeArea: false),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Divider(
                      height: 1.5,
                      color: blueColor,
                    ),
                  ],
                ),
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
                            child: Text('Choisissez le coupon crédit',
                                style: TextStyle(
                                    color:
                                        coupon == 'Choisissez le coupon crédit'
                                            ? Colors.grey
                                            : Colors.black,
                                    fontSize: 14)),
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
                                    child: AchatCreditPassword()));
                          },
                          child: Text(
                            'suivant',
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
