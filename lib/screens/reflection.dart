import 'package:flutter/material.dart';
import 'package:italent/widget/header.dart';

class Reflection extends StatelessWidget {
  const Reflection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: ScrollController(),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Header(text: 'Reflectie'),
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                '''Tijdens het traject heb ik mij gefocust op het worden van een excellente professional a.d.h.v. de gekende X-Factor. Deze doelen heb ik dan ook bereikt, mede dankzij de georganiseerde seminaries van PXL. Bij de keuze van mijn seminaries heb ik ook vooral gekozen voor seminaries die mij iets nieuws aanleerde, waarmee ik niet direct in aanraking kwam binnen mijn keuzetraject, bijvoorbeeld: Kubernetes. Om mij verder te onderscheiden heb ik buiten de “verplichte” activiteiten ook gewerkt aan mijn eigen kennis. Hierdoor voel ik mij een meer volwaardig full stack ontwikkelaar. Natuurlijk tijdens het opdoen van zoveel kennis is het ook goed om dit te delen met andere. Ik heb mij dan ook ingezet in het ondersteunen van en bijles geven aan anderen, ook al was het maar voor een zeer korte periode, omwille van o.a. tijdsgebrek en ook aangezien de persoon waaraan ik bijles gaf geen verdere interesse had in programmeren. Ik heb ook voor het eerst bijgedragen aan de open-source community door het maken van een publiek beschikbare package voor Flutter. Dit was een nieuwe ervaring voor mij aangezien dit iets is wat ik nog nooit gedaan had. Hiermee wou ik mijn kennis voor het oplossen van een specifiek probleem delen met iedereen hetzelfde probleem heeft. Gedurende het proces heb ik geleerd hoe ik mijn grenzen kan verleggen om nieuwe dingen bij te leren. Dit vereist uiteraard veel discipline om het vol te houden, maar hier heb ik nooit problemen mee gehad. Ik heb al sinds jongs af aan een echte werkersmentaliteit voor de verschillende dingen die mij interesseren, zoals: sport en IT. Ik heb tijdens mijn opleidingsjaren ook ontdekt hoe ik kan meehelpen aan het oplossen van de problemen a.d.h.v. het bijdragen open-source packages en projecten. Dit wil ik ook zeker in de toekomst blijven doen, waar mogelijk. Gedurende mijn stage waarin ik aan het ontwikkelen ben in Laravel heb ik ook mijn tweede package “Fuzzyness” beschikbaar gesteld voor PHP ontwikkelaars. In de toekomst ben ik ook van plan dit te blijven doen, om mensen met dezelfde problemen een oplossing aan te bieden. Helaas door o.a. corona heb ik vooral bijdragen moeten leveren op deze manier, aangezien het moeilijk was om samen te komen met andere om samen te netwerken en ideeën te delen. Hopelijk in de toekomst kan dit wel weer. Ik ben dan ook van plan om mijn netwerk van zowel connecties als kennis uit te breiden in de nabije toekomst. Als IT-er is er ook nooit een einde aan het leren. Er is altijd wel iets nieuws om te ontdekken. Een aantal dingen waar ik bijvoorbeeld mij nog in wil verdiepen zijn: blockchain en investeren. Om iets specifieker zijn, bij blockchain gaat het vooral over de werking en technologie hiervan en bij investeren ben ik vooral geïnteresseerd in het lezen en begrijpen van de grafieken om zo een gerichte voorspelling te maken van prijsacties. Helaas is een vaak terugkerend probleem: de balans zoeken tussen mijn geplande activiteiten en de tijd om nieuwe dingen te ontdekken, hieraan moet ik duidelijk nog werken in de toekomst, maar ik zie dit eerder als een extra uitdaging en niet zozeer als een probleem.''',
              ),
            ),
            Image.asset(
              'assets/x-factor.png',
            )
          ],
        ),
      ),
    );
  }
}
