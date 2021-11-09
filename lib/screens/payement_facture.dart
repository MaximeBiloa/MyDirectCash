import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/material.dart';
import 'package:mydirectcash/screens/login.dart';
import 'package:mydirectcash/screens/payement_facture_validate.dart';
import 'package:mydirectcash/screens/payement_marchant_montant.dart';
import 'package:mydirectcash/screens/settings.dart';
import 'package:mydirectcash/utils/colors.dart';
import 'package:mydirectcash/utils/fonts.dart';
import 'package:page_transition/page_transition.dart';

class PayementFacture extends StatefulWidget {
  PayementFacture({required this.factureInfos});
  dynamic factureInfos;
  //assets/images/ico-parametre.png

  @override
  _PayementFactureState createState() => _PayementFactureState();
}

class _PayementFactureState extends State<PayementFacture> {
  Widget bouquetContainer() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            PageTransition(
                type: PageTransitionType.rightToLeft,
                child: PayementFactureValidate(
                  factureInfos: {
                    'title': 'Bouquet ACCESS',
                    'image': widget.factureInfos['image'],
                    'description': 'Choisissez le Bouquet de recharge'
                  },
                )));
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(5),
        ),
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/images/canal_plus.png',
              width: 50,
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
                      'Bouquet ACCESS',
                      style: TextStyle(
                          fontFamily: title_font,
                          color: blueColor,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      'XAF 20 000.0',
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
            Padding(
              padding: const EdgeInsets.only(bottom: 25),
              child: Text(
                '3 mois',
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: title_font,
                    fontWeight: FontWeight.bold),
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
          child: widget.factureInfos['title'] == 'Abonnement Canal+'
              ? Container(
                  child: Column(
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
                                                type: PageTransitionType
                                                    .rightToLeft,
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
                            Text('Payement de facture',
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
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              widget.factureInfos['image'],
                              width: 50,
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
                                      widget.factureInfos['title'],
                                      style: TextStyle(
                                          fontFamily: title_font,
                                          color: blueColor,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    Text(
                                      widget.factureInfos['description'],
                                      style: TextStyle(
                                          fontFamily: content_font,
                                          fontSize: 12,
                                          color: Colors.grey.shade800,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Expanded(
                        child: Container(
                          child: ListView.builder(
                              itemCount: 20,
                              itemBuilder: (BuildContext context, int index) {
                                return bouquetContainer();
                              }),
                        ),
                      )
                    ],
                  ),
                )
              : ListView(
                  padding: EdgeInsets.symmetric(horizontal: 25),
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
                                              type: PageTransitionType
                                                  .rightToLeft,
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
                          Text('Payement de facture',
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            widget.factureInfos['image'],
                            width: 50,
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
                                    widget.factureInfos['title'],
                                    style: TextStyle(
                                        fontFamily: title_font,
                                        color: blueColor,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Text(
                                    widget.factureInfos['description'],
                                    style: TextStyle(
                                        fontFamily: content_font,
                                        fontSize: 12,
                                        color: Colors.grey.shade800,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 20),
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          style:
                              TextStyle(fontFamily: content_font, fontSize: 13),
                          textAlign: TextAlign.start,
                          decoration: InputDecoration(
                              hintText: 'Saisissez votre numéro de contrat',
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
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 50)),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      PageTransition(
                                          type: PageTransitionType.rightToLeft,
                                          child: PayementFactureValidate(
                                            factureInfos: widget.factureInfos,
                                          )));
                                },
                                child: Text(
                                  'Suivant',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14),
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
