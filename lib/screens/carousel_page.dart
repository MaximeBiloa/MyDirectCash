import 'package:flutter/material.dart';
import 'package:mydirectcash/screens/components/carousel_container.dart';
import 'package:mydirectcash/screens/phone_number_entry.dart';
import 'package:mydirectcash/utils/colors.dart';
import 'package:mydirectcash/utils/fonts.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_carousel_slider/carousel_slider_indicators.dart';
import 'package:flutter_carousel_slider/carousel_slider_transforms.dart';
import 'package:page_transition/page_transition.dart';

class CarouselPage extends StatefulWidget {
  @override
  _CarouselPageState createState() => _CarouselPageState();
}

class _CarouselPageState extends State<CarouselPage> {
  late CarouselSliderController _carouselSliderController;

  static const List<Map> slides = [
    {
      'image': 'assets/images/pexels-anna-nekrashevich-6802046.jpg',
      'title': 'TRANSFERT D’ARGENT',
      'content':
          "Pour tous opérateurs mobiles, Transférez de l’argent par DirectCash  et le destinataire disposera de son argent comme bon lui semble dans son compte Directcash ou non."
    },
    {
      'image': 'assets/images/pexels-anna-nekrashevich-6801872.jpg',
      'title': "TRANSACTION OM/MOMO",
      'content':
          "Effectuez vos transactions  Orange money (OM) et Mobile money (MoMo) en toute sécurité et en un click."
    },
    {
      'image': 'assets/images/nubelson-fernandes-laLxjCYtkFY-unsplash.jpg',
      'title': 'PAIEMENT MARCHAND',
      'content':
          "Zéros problèmes de monnaies. Faites vos courses chez tous Marchands, réglez vos factures comme des pros par QR Code…"
    },
    {
      'image': 'assets/images/businessman-800x400.jpg',
      'title': 'PAYER UNE FACTURE',
      'content':
          "Réglez vos factures  ENEO, CAMWATER ainsi que vos réabonnements  CANAL+ ou que vous soyez à partir de votre téléphone mobile."
    },
    {
      'image': 'assets/images/téléchargement.jpg',
      'title': 'ACHAT DE CREDIT DE COMMUNICATION',
      'content':
          "Pour tous opérateurs mobiles, dites désormais stop au manque de crédit  de communication et rechargez vos SIM via notre plateforme Directcash."
    },
    {
      'image': 'assets/images/pexels-og-mpango-4090605.jpg',
      'title': 'GUICHET PRODUCTEURS',
      'content':
          "Vous êtes producteurs de Cacao/Café, vous êtes fournisseurs d’intrants agricoles, alors ceci est fait sur mesure pour faciliter la gestion de vos achats ainsi que  la gestion de votre subvention."
    },
    {
      'image': 'assets/images/bank.jpg',
      'title': 'SERVICES BANCAIRES',
      'content':
          "Vous voulez consulter votre compte bancaire, vous voulez créer un compte dans une banque ou microfinance partenaire, vous voulez faire un Dépôt/Retrait dans votre compte dans une banque ou microfinance partenaire."
    }
  ];
  GlobalKey<dynamic> _sliderKey = GlobalKey();
  @override
  void initState() {
    super.initState();
    _carouselSliderController = CarouselSliderController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //_carouselSliderController.nextPage(Duration(milliseconds: 500));
          Navigator.push(
              context,
              PageTransition(
                  type: PageTransitionType.rightToLeft,
                  child: PhoneNumberEntry()));
        },
        backgroundColor: Colors.transparent,
        elevation: 0,
        splashColor: Colors.transparent,
        hoverColor: Colors.transparent,
        hoverElevation: 0,
        child: Image.asset(
          'assets/images/ico-suivant.png',
          width: 50,
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/background.png'),
                fit: BoxFit.cover)),
        child: CarouselSlider.builder(
          key: _sliderKey,
          unlimitedMode: true,
          controller: _carouselSliderController,
          slideBuilder: (index) {
            final slide = slides[index];
            return CarouselContainer(
              image: slide['image'],
              title: slide['title'],
              content: slide['content'],
            );
          },
          slideTransform: TabletTransform(),
          slideIndicator: CircularSlideIndicator(
              padding: EdgeInsets.only(bottom: 40, left: 25),
              alignment: Alignment.bottomLeft,
              indicatorBorderColor: Colors.transparent,
              indicatorBackgroundColor: Colors.grey.shade400,
              indicatorRadius: 4,
              currentIndicatorColor: blueColor,
              indicatorBorderWidth: 0),
          itemCount: slides.length,
          initialPage: 0,
          enableAutoSlider: true,
        ),
      ),
    );
  }
}
