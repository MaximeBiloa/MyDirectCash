import 'package:flutter/material.dart';
import 'package:mydirectcash/screens/components/payement_option.dart';
import 'package:mydirectcash/screens/payement_facture.dart';
import 'package:mydirectcash/screens/recharge_directcash.dart';
import 'package:mydirectcash/screens/recharge_om.dart';
import 'package:mydirectcash/screens/recharge_virement.dart';
import 'package:mydirectcash/utils/colors.dart';
import 'package:mydirectcash/utils/fonts.dart';
import 'package:page_transition/page_transition.dart';

class ChoixPayementModeComponent extends StatefulWidget {
  @override
  _ChoixPayementModeComponentState createState() =>
      _ChoixPayementModeComponentState();
}

class _ChoixPayementModeComponentState
    extends State<ChoixPayementModeComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade200,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 2.5,
      child: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
            child: Text(
              'Choisissez le mode de paiement',
              style: TextStyle(
                  fontFamily: title_font,
                  fontWeight: FontWeight.bold,
                  color: blueColor,
                  fontSize: 14),
            ),
          ),
          SizedBox(
            height: 0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
            child: GestureDetector(
                onTap: () {},
                child: PayementModeOption(
                    icon: Icon(
                      Icons.chevron_right,
                      size: 18,
                    ),
                    title: 'Carte de crédit / Paypal')),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
            child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.rightToLeft,
                        child: RechargeOM(),
                      )).then((value) {
                    Navigator.pop(context);
                  });
                },
                child: PayementModeOption(
                    icon: Icon(
                      Icons.chevron_right,
                      size: 18,
                    ),
                    title: 'Compte OM / MoMo')),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
            child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.rightToLeft,
                        child: RechargeVirement(),
                      )).then((value) {
                    Navigator.pop(context);
                  });
                },
                child: PayementModeOption(
                    icon: Icon(
                      Icons.chevron_right,
                      size: 18,
                    ),
                    title: 'Virement Bancaire')),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
            child: GestureDetector(
                onTap: () {
                  Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.rightToLeft,
                              child: RechargeDirectCash()))
                      .then((value) {
                    Navigator.pop(context);
                  });
                },
                child: PayementModeOption(
                    icon: Icon(
                      Icons.chevron_right,
                      size: 18,
                    ),
                    title: 'Transfert DirectCash')),
          ),
        ],
      ),
    );
  }
}
