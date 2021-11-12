import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/material.dart';
import 'package:mydirectcash/screens/home_guichet.dart';
import 'package:mydirectcash/screens/login.dart';
import 'package:mydirectcash/screens/payement_facture_validate.dart';
import 'package:mydirectcash/screens/payement_marchant_montant.dart';
import 'package:mydirectcash/screens/settings.dart';
import 'package:mydirectcash/utils/colors.dart';
import 'package:mydirectcash/utils/fonts.dart';
import 'package:page_transition/page_transition.dart';

class FournisseurPage extends StatefulWidget {
  FournisseurPage({required this.fournisseur});
  dynamic fournisseur;
  @override
  _FournisseurPageState createState() => _FournisseurPageState();
}

class _FournisseurPageState extends State<FournisseurPage> {
  Widget produitStockContainer() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            PageTransition(
                type: PageTransitionType.rightToLeft,
                child: PayementFactureValidate(
                  factureInfos: {
                    'title': 'Bouquet ACCESS',
                  },
                )));
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5), color: Colors.white),
        padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
        child: Stack(
          children: [
            Positioned(
                child: Container(
              width: 80,
              height: 40,
              color: marronColor,
              child: Column(
                children: [
                  Text(
                    'En stock',
                    style: TextStyle(
                        color: greenColor,
                        fontSize: 12,
                        fontFamily: title_font),
                  ),
                  Text(
                    'kg 100',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontFamily: title_font),
                  ),
                ],
              ),
            )),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    decoration:
                        BoxDecoration(border: Border.all(color: marronColor)),
                    child: Image.asset(
                      'assets/images/logo-guichet-producteur.png',
                      fit: BoxFit.cover,
                      width: 70,
                    ),
                  ),
                  Text(
                    'Semence de Cacao',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: marronColor,
                        fontSize: 15,
                        fontFamily: title_font),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Prix/kg 20 000 XAF',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: marronColor,
                        fontSize: 14,
                        fontFamily: title_font),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '+ Ajouter',
                          style: TextStyle(
                              color: greenColor,
                              fontSize: 15,
                              fontFamily: title_font),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: greenColor)),
                          child: Text(
                            '    001',
                            style:
                                TextStyle(fontSize: 15, fontFamily: title_font),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
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
            child: Center(
              child: Container(
                color: Colors.grey.shade200,
                child: ListView(
                  children: [
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Container(
                              height: 80,
                              child: Stack(
                                children: [
                                  Image.asset(
                                    'assets/images/logo-guichet-producteur.png',
                                    height: 70,
                                  ),
                                  Positioned(
                                    top: 55,
                                    left: 3,
                                    child: Text(
                                      'GUICHET',
                                      style: TextStyle(
                                          color: marronColor,
                                          fontSize: 15,
                                          fontFamily: title_font),
                                    ),
                                  ),
                                  Positioned(
                                      top: 70,
                                      left: 4,
                                      child: Text(
                                        'PRODUCTEURS',
                                        style: TextStyle(
                                            color: marronColor.withOpacity(0.5),
                                            fontSize: 8.8,
                                            fontWeight: FontWeight.w200,
                                            fontFamily: content_font),
                                      ))
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: 40,
                            height: 100,
                            color: Colors.transparent,
                            child: Stack(children: [
                              Positioned(
                                  top: 28,
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              type: PageTransitionType
                                                  .rightToLeft,
                                              child: HomeGuichet()));
                                    },
                                    child: Icon(Icons.home,
                                        color: marronColor, size: 35),
                                  ))
                            ]),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 25, vertical: 10),
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
                              color: greenColor,
                            ),
                          ),
                          SizedBox(width: 30),
                          Expanded(
                            child: Text(
                                'Fournisseur ${widget.fournisseur['name']}',
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: title_font,
                                    color: greenColor,
                                    fontWeight: FontWeight.w500)),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 40,
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                  border: Border.all(color: blueColor),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.search,
                                    size: 20,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                      child: TextFormField(
                                          keyboardType: TextInputType.text,
                                          style: TextStyle(
                                              fontFamily: content_font,
                                              fontSize: 14),
                                          textAlign: TextAlign.start,
                                          decoration: InputDecoration(
                                              border: InputBorder.none,
                                              hintText: 'Rechercher',
                                              hintStyle: TextStyle(
                                                  fontFamily: content_font,
                                                  color: Colors.grey.shade500,
                                                  fontSize: 14)))),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 10),
                              child: Row(
                                children: [
                                  Expanded(child: produitStockContainer()),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(child: produitStockContainer())
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: 10),
                              child: Row(
                                children: [
                                  Expanded(child: produitStockContainer()),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(child: produitStockContainer())
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Expanded(child: produitStockContainer()),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(child: produitStockContainer())
                                ],
                              ),
                            )
                          ],
                        ) /* GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithMaxCrossAxisExtent(
                                  maxCrossAxisExtent: 350,
                                  childAspectRatio: 3 / 2,
                                  crossAxisSpacing: 8,
                                  mainAxisSpacing: 15),
                          itemCount: 4,
                          itemBuilder: (BuildContext ctx, index) {
                            return produitStockContainer();
                          }),*/
                        ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        border: Border.all(color: marronColor),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Column(
                        children: [
                          Row(children: [
                            Icon(Icons.chevron_right,
                                size: 18, color: marronColor),
                            Text(
                              'Produits dans le Panier',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  //fontSize: 14,
                                  fontFamily: content_font,
                                  color: marronColor),
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
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 18, top: 0),
                                  child: Text(
                                    '02 produits',
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
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 18, top: 0),
                                  child: Text(
                                    'Chez ABEGA',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontFamily: content_font,
                                    ),
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
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Wrap(
                                  children: [
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          primary: marronColor,
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 50)),
                                      onPressed: () {
                                        /*Navigator.push(
                                    context,
                                    PageTransition(
                                        type: PageTransitionType.rightToLeft,
                                        child: GuichetAchatProduit()));*/
                                      },
                                      child: Text(
                                        'Valider ma commande',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontFamily: content_font),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )));
  }
}
