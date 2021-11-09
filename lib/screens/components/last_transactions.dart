import 'package:flutter/material.dart';
import 'package:mydirectcash/utils/colors.dart';
import 'package:mydirectcash/utils/fonts.dart';

class LastTransaction extends StatefulWidget {
  @override
  _LastTransactionState createState() => _LastTransactionState();
}

class _LastTransactionState extends State<LastTransaction> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: blueColor),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        children: [
          Row(children: [
            Icon(Icons.chevron_right, size: 18, color: blueColor),
            Text(
              'Dernières transactions',
              textAlign: TextAlign.start,
              style: TextStyle(
                  //fontSize: 12,
                  fontFamily: content_font,
                  color: blueColor),
            ),
          ]),
          Padding(
            padding: const EdgeInsets.only(left: 18, top: 5),
            child: Divider(
              height: 1,
              color: Colors.grey,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Padding(
              padding: const EdgeInsets.only(left: 18, top: 0),
              child: Text(
                'Envoi d\'argent',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 13,
                  fontFamily: content_font,
                ),
              ),
            ),
            Text(
              '20 000,0 XAF',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 12,
                fontFamily: content_font,
                fontWeight: FontWeight.w800,
              ),
            ),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Padding(
              padding: const EdgeInsets.only(left: 18, top: 0),
              child: Text(
                'Vers TALLA jean (6 55 ** ** **)',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 10,
                  fontFamily: content_font,
                ),
              ),
            ),
            Text(
              '22/05/21 - 15:20',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 10,
                fontFamily: content_font,
                fontWeight: FontWeight.w500,
              ),
            ),
          ]),
          Padding(
            padding: const EdgeInsets.only(left: 18, top: 10),
            child: Divider(
              height: 1,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
