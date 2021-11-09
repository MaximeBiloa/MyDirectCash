import 'package:flutter/material.dart';
import 'package:mydirectcash/screens/payement_facture.dart';
import 'package:mydirectcash/utils/colors.dart';
import 'package:mydirectcash/utils/fonts.dart';
import 'package:page_transition/page_transition.dart';

class ChoixFacture extends StatefulWidget {
  @override
  _ChoixFactureState createState() => _ChoixFactureState();
}

class _ChoixFactureState extends State<ChoixFacture> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 25, horizontal: 25),
            child: Text(
              'Choisissez la facture à Payer',
              style: TextStyle(
                  fontFamily: title_font,
                  fontWeight: FontWeight.bold,
                  color: blueColor,
                  fontSize: 14),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.rightToLeft,
                      child: PayementFacture(
                        factureInfos: {
                          'image': 'assets/images/canal_plus.jpg',
                          'title': 'Abonnement Canal+',
                          'description': 'Effectuer votre réabonnement',
                        },
                      ))).then((value) {
                Navigator.pop(context);
              });
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/images/canal_plus.jpg',
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
                            'Abonnement Canal+',
                            style: TextStyle(
                                fontFamily: title_font,
                                color: blueColor,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            'Effectuer votre réabonnement',
                            style: TextStyle(
                                fontFamily: content_font,
                                fontSize: 12,
                                color: Colors.grey.shade800,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.rightToLeft,
                      child: PayementFacture(
                        factureInfos: {
                          'image': 'assets/images/eneo.png',
                          'title': 'Enéo',
                          'description': 'Payer votre facture Enéo'
                        },
                      ))).then((value) {
                Navigator.pop(context);
              });
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/images/eneo.png',
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
                            'Enéo',
                            style: TextStyle(
                                fontFamily: title_font,
                                color: blueColor,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            'Payer votre facture Enéo',
                            style: TextStyle(
                                fontFamily: content_font,
                                fontSize: 12,
                                color: Colors.grey.shade800,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.rightToLeft,
                      child: PayementFacture(
                        factureInfos: {
                          'image': 'assets/images/cam_water.jpg',
                          'title': 'Camwater',
                          'description': "Payer votre quittance d'eau"
                        },
                      ))).then((value) {
                Navigator.pop(context);
              });
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/images/cam_water.jpg',
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
                            'Camwater',
                            style: TextStyle(
                                fontFamily: title_font,
                                color: blueColor,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            'Effectuer votre réabonnement',
                            style: TextStyle(
                                fontFamily: content_font,
                                fontSize: 12,
                                color: Colors.grey.shade800,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
