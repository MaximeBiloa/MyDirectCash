import 'package:country_list_pick/country_list_pick.dart';
import 'package:country_list_pick/country_selection_theme.dart';
import 'package:country_list_pick/support/code_country.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mydirectcash/screens/account_qr.dart';
import 'package:mydirectcash/screens/code_entry.dart';
import 'package:mydirectcash/screens/components/bottom_navigation.dart';
import 'package:mydirectcash/screens/components/settingstab_option.dart';
import 'package:mydirectcash/screens/guichet_remplir_info.dart';
import 'package:mydirectcash/screens/home.dart';
import 'package:mydirectcash/screens/login.dart';
import 'package:mydirectcash/screens/transactions.dart';
import 'package:mydirectcash/utils/colors.dart';
import 'package:mydirectcash/utils/fonts.dart';
import 'package:page_transition/page_transition.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  Widget profilContent(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/background.png'),
              fit: BoxFit.cover)),
      child: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
              children: [
                Container(
                    margin: EdgeInsets.only(top: 5),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Icon(Icons.person),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: TextFormField(
                            keyboardType: TextInputType.text,
                            style: TextStyle(
                                fontFamily: content_font, fontSize: 13),
                            textAlign: TextAlign.start,
                            decoration: InputDecoration(
                                labelText: 'Nom',
                                labelStyle: TextStyle(
                                    fontFamily: content_font,
                                    color: Colors.grey.shade500,
                                    fontSize: 13)),
                          ),
                        ),
                      ],
                    )),
                Container(
                    margin: EdgeInsets.only(top: 5),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Icon(Icons.phone),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: TextFormField(
                            keyboardType: TextInputType.text,
                            style: TextStyle(
                                fontFamily: content_font, fontSize: 13),
                            textAlign: TextAlign.start,
                            decoration: InputDecoration(
                                labelText: 'Numéro de téléphone',
                                labelStyle: TextStyle(
                                    fontFamily: content_font,
                                    color: Colors.grey.shade500,
                                    fontSize: 13)),
                          ),
                        ),
                      ],
                    )),
                Container(
                    margin: EdgeInsets.only(top: 5),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Icon(Icons.alternate_email),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: TextFormField(
                            keyboardType: TextInputType.text,
                            style: TextStyle(
                                fontFamily: content_font, fontSize: 13),
                            textAlign: TextAlign.start,
                            decoration: InputDecoration(
                                labelText: 'Email',
                                labelStyle: TextStyle(
                                    fontFamily: content_font,
                                    color: Colors.grey.shade500,
                                    fontSize: 13)),
                          ),
                        ),
                      ],
                    )),
                Container(
                    margin: EdgeInsets.only(top: 5),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Icon(Icons.flag_outlined),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: TextFormField(
                            keyboardType: TextInputType.text,
                            style: TextStyle(
                                fontFamily: content_font, fontSize: 13),
                            textAlign: TextAlign.start,
                            decoration: InputDecoration(
                                labelText: 'Pays',
                                labelStyle: TextStyle(
                                    fontFamily: content_font,
                                    color: Colors.grey.shade500,
                                    fontSize: 13)),
                          ),
                        ),
                      ],
                    )),
                Container(
                    margin: EdgeInsets.only(top: 5),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Icon(Icons.location_on_outlined),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: TextFormField(
                            keyboardType: TextInputType.text,
                            style: TextStyle(
                                fontFamily: content_font, fontSize: 13),
                            textAlign: TextAlign.start,
                            decoration: InputDecoration(
                                labelText: 'Ville de résidence',
                                labelStyle: TextStyle(
                                    fontFamily: content_font,
                                    color: Colors.grey.shade500,
                                    fontSize: 13)),
                          ),
                        ),
                      ],
                    )),
                SizedBox(
                  height: 40,
                ),
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
                            onPressed: () {},
                            child: Text(
                              'Sauvegarder',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // BottomNavigation()
        ],
      ),
    );
  }

  Widget settingsContent(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/background.png'),
              fit: BoxFit.cover)),
      child: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.rightToLeft,
                            child: GuichetRemplirInfos()));
                  },
                  child: SettingsTabOption(
                      icon: Icon(
                        Icons.home,
                        size: 18,
                      ),
                      title: 'Accueil'),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.rightToLeft,
                            child: Transactions()));
                  },
                  child: SettingsTabOption(
                      icon: Icon(
                        Icons.chevron_right,
                        size: 18,
                      ),
                      title: 'Mes transactions'),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.rightToLeft,
                            child: AccountQR()));
                  },
                  child: SettingsTabOption(
                      icon: Icon(
                        Icons.chevron_right,
                        size: 18,
                      ),
                      title: 'Mes identifiants'),
                ),
                GestureDetector(
                  onTap: () {},
                  child: SettingsTabOption(
                    icon: Icon(
                      Icons.chevron_right,
                      size: 18,
                    ),
                    title: 'Recharger mon compte',
                  ),
                ),
                SettingsTabOption(
                    icon: Icon(
                      Icons.chevron_right,
                      size: 18,
                    ),
                    title: 'Simulateur de facture'),
                SettingsTabOption(
                    icon: Icon(
                      Icons.chevron_right,
                      size: 18,
                    ),
                    title: 'Guichet producteur'),
                SettingsTabOption(
                    icon: Icon(
                      Icons.chevron_right,
                      size: 18,
                    ),
                    title: 'Comment ça marche ?'),
                SettingsTabOption(
                    icon: Icon(
                      Icons.logout,
                      size: 18,
                    ),
                    title: 'Se déconnecter'),
                SettingsTabOption(
                    icon: Icon(
                      Icons.chevron_right,
                      size: 18,
                    ),
                    title: 'A propos de MyDirectCash'),
              ],
            ),
          ),
          // BottomNavigation()
        ],
      ),
    );
  }

  Widget configPassWordContent(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/background.png'),
              fit: BoxFit.cover)),
      child: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
              children: [
                Container(
                  color: Colors.transparent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Configurer son mot de passe',
                        style: TextStyle(
                            fontFamily: title_font,
                            color: blueColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
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
                          hintText: 'Ancien mot de passe',
                          hintStyle: TextStyle(
                              fontFamily: content_font,
                              color: Colors.grey.shade500,
                              fontSize: 13)),
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
                          hintText: 'Mot de passe',
                          hintStyle: TextStyle(
                              fontFamily: content_font,
                              color: Colors.grey.shade500,
                              fontSize: 13)),
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
                          hintText: 'Confirmer mot de passe',
                          hintStyle: TextStyle(
                              fontFamily: content_font,
                              color: Colors.grey.shade500,
                              fontSize: 13)),
                    )),
                SizedBox(
                  height: 40,
                ),
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
                            onPressed: () {},
                            child: Text(
                              'Enregistrer',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
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
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: blueColor))),
                )
              ],
            ),
          ),
          //BottomNavigation()
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.cyan,
          toolbarHeight: 200,
          iconTheme: IconThemeData(color: blueColor, size: 40),
          title: Container(
            margin: EdgeInsets.only(right: 50),
            color: Colors.transparent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 0, bottom: 0),
                  child: Image.asset(
                    'assets/images/ico-avatar.png',
                    width: 130,
                  ),
                ),
              ],
            ),
          ),
          bottom: TabBar(
            labelColor: blueColor,
            indicatorColor: blueColor,
            indicatorWeight: 2,
            unselectedLabelColor: Colors.white,
            tabs: [
              Tab(
                  child: Text('Paramètres',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: TextStyle(
                          fontFamily: content_font,
                          fontWeight: FontWeight.w500))),
              Tab(
                  child: Text(
                'Profil',
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: TextStyle(
                    fontFamily: content_font, fontWeight: FontWeight.w500),
              )),
              Tab(
                  child: Text('Mot de passe',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontFamily: content_font,
                          fontWeight: FontWeight.w500))),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            settingsContent(context),
            profilContent(context),
            configPassWordContent(context),
          ],
        ),
      ),
    );
  }
}
