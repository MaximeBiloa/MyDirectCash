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
      'title': 'Tansfert d\'argent',
      'content':
          "Transférez de l'argent dans un compte qui soit ou non DirectCash et le destinatare disposera de son argent comme bon lui semble."
    },
    {
      'image': 'assets/images/pexels-anna-nekrashevich-6801872.jpg',
      'title': "Transactions OM/MoMo",
      'content':
          "Effectuez vos transactions Orange money et Mobile money en toute sécurité et en un click."
    },
    {
      'image': 'assets/images/nubelson-fernandes-laLxjCYtkFY-unsplash.jpg',
      'title': 'Paiement marchand',
      'content':
          "Vous faites vos courses à MAHIMA, DOVE, Santa Lucia ou autre supermarché, réglez vos factures comme des pros."
    },
    {
      'image': 'assets/images/businessman-800x400.jpg',
      'title': 'Payer une facture',
      'content':
          "Payez et régler vos factures ENEO, CAMWATER ainsi que vos réabonnements CANAL+ où que vous soyez à partir de votre téléphone."
    },
    {
      'image': 'assets/images/téléchargement.jpg',
      'title': 'Achat de crédit de communication',
      'content':
          "Dites désormais stop au manque de crédit et rechargez vos SIM via notre plateforme"
    },
    {
      'image': 'assets/images/pexels-og-mpango-4090605.jpg',
      'title': 'Guichet producteur',
      'content':
          "Vous êtes producteurs de Cacao/Café, vous êtes fournisseurs d'intrants agricoles, alors ceci est fait sur mesure pour faciliter la gestion de vos achats ainsi que votre subvention"
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
