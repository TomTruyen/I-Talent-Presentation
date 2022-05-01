import 'package:flutter/material.dart';
import 'package:italent/model/activity_model.dart';
import 'package:italent/widget/header.dart';
import 'package:italent/widget/seminar_card.dart';

class PXL extends StatelessWidget {
  const PXL({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: ScrollController(),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Header(text: 'PXL activiteiten'),
            ListView(
              shrinkWrap: true,
              children: <Widget>[
                ActivityCard(
                  activity: ActivityModel(
                    title: 'Projectweek',
                    subtitle: '15/02/2021 t.e.m. 19/02/2021 – PXL',
                    description:
                        'Gedurende deze week dat deel uitmaakte van het project uit het tweede jaar werd er een hele week in groep gewerkt. Elke dag had een andere thema met bijbehorende activiteiten. Deze week werd georganiseerd door PXL en de begeleiding werd ook gegeven door lectoren.',
                    image: 'assets/pxl.png',
                  ),
                ),
                ActivityCard(
                  activity: ActivityModel(
                    title: '3 POP-sessies',
                    subtitle: 'PXL en online',
                    description:
                        'De 3 POP-sessies werden georganiseerd door de PXL. Lectoren communication skills kwamen uitleg geven over verschillende onderwerpen om ons voor te bereiden op onze eindwerken',
                    image: 'assets/pxl.png',
                  ),
                ),
                ActivityCard(
                  activity: ActivityModel(
                    title: 'Innovatieroute UI/UX',
                    subtitle: '30/09/2021 t.e.m. 14/10/2021 - PXL',
                    description:
                        'nnovatieroute met als thema UI/UX. Aan aantal bedrijven kwamen uitleg geven over alles UI/UX, van idee tot design tot uitwerking. De bedrijven die verantwoordelijk waren voor deze interessante “lessen” zijn Appwise (Katrijn Caelen, Shana Houben), Appfoundry (Christoph van Ochten) en Humix (Lonneke Spinhof, Katrien de Bleser)',
                    image: 'assets/pxl.png',
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
