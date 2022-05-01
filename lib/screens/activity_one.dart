import 'package:flutter/material.dart';
import 'package:italent/widget/header.dart';

class ActivityOne extends StatelessWidget {
  const ActivityOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: ScrollController(),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Header(text: 'Craftwork: from idea to solution'),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Text(
                'Als eerste activiteit zal ik het hebben over “Craftworkz: From idea to solution”. Mijn doel hierbij was om een beter inzicht te krijgen in hoe het proces van het bedenken en het ontwikkelen van een applicatie in elkaar zit.',
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Text(
                'Het seminarie werd online gegeven via een teams meeting op 23 februari 2021 door Pieter Portauw van Craftworkz. Craftworkz maakt deel uit van de Cronos Group. Dit is een groep van bedrijven met als focus innovatieve technologieën zoals: blockchain, AI, VR,... Dhr. Portauw zijn functie binnen het bedrijf is technical architect en SCRUM master.',
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Text(
                'Gedurende het seminarie werd er vooral verwacht dat wij zelf input gaven bij de besproken topics. De spreker gaf een presentatie met verschillende voorbeelden vanuit het bedrijf zelf, maar er werd ook verwacht van ons om verdere voorbeelden aan te halen.',
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Text(
                'Het seminarie bestond voor een groot deel uit theoretische uitleg. Dit betekent dus dat er niet veel was dat ik kon doen behalve op te letten en eventuele vragen te stellen. De presentatie werd opgedeeld in 3 pijlers: design thinking, LEAN en agile. Gedurende de hele presentatie werd dan ook bij alles de focus gelegd op één of meerdere van deze pijlers.',
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Image.asset('assets/activity_one_1.png'),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Text(
                '''Bij design thinking werd de focus gelegd op de vraag: “wat is het probleem?” en niet zozeer op een oplossing voor dit probleem. Hierbij werd besproken dat er voor ieder probleem een balans gezocht moet worden tussen UX, marketing sales en engineering. Ieder onderdeel had ook zijn eigen bijbehorende vraag. UX legt de focus op wat de user wilt. Marketing sales kijkt eerder naar wat het meest winstgevend is. Tenslotte engineering bekijkt wat ook mogelijk is. Het werd al snel duidelijk dan de balans tussen de 3 compleet verschillende vragen vinden niet evident is. Gelukkig is er een oplossing. De spreker gaf uitleg bij de oplossing: de “double diamond”. Dit design procesmodel  maakt gebruik van 4 stappen om het probleem op te lossen namelijk: discover, define, design en decide. Bij “discover” onderzoekt men wat de context is en bijgevolg wie de belangrijkste stakeholders zijn. Het doel hiervan is om een lijst op te stellen met problem die er opgelost moeten worden. Vervolgens gaat “define” gaat proberen deze lijst verder te verfijnen om dan vervolgens over te gaan naar het “design” gedeelte. Hierin wordt er voor het eerst nagedacht over de mogelijke oplossingen voor de problemen. Het is dan ook goed mogelijk dat er al eerste schetsen worden gemaakt om alles te verduidelijken. Tenslotte bij “decide” gaat er gekozen worden voor een mogelijke oplossing. Hierbij gaan ook de belangrijkste voordelen van het eindproduct genoteerd worden.
                ''',
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Image.asset('assets/activity_one_2.png'),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Text(
                'Het volgende onderdeel, LEAN, gaf uitleg over hoe de manier van denken bij het oplossen van een probleem de focus moet leggen op de gebruikers. Het bedenken van kleinschalige experimenten om te weten of een product ‘market fit’ is was één van de mogelijk stappen. Het concept minimum viable product (MVP) werd ook uitgelegd. Dit was geen nieuw idee voor mij, maar het gaf wel een beter inzicht in waarom dit belangrijk is. Tenslotte werd agile besproken. Agile was een gekend idee dankzij de opleidingsonderdelen: devops en software analysis. Er werd vooral besproken wat agile is en hoe het gebruikt kan worden. Ook verschilllende methodologieën zoals scrums en kanbanborden kregen een plaats in de presentatie.',
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Text(
                'Ik vond het seminarie over het algemeen zeer boeiend en heb er ook een aantal dingen uit opgestoken. Vooral het hele “double diamond” concept vond ik zeer interessant, omdat het een goede manier is om verschillende problemen op te sommen en op te lossen terwijl er rekening wordt gehouden met alle belangrijke stakeholders van het project. Helaas was niet alles nieuw, vooral het laatste deel van het seminarie was voor een groot deel al gekende informatie. Dit betekent natuurlijk niet dat er niks nieuws werd verteld. Het helpte mij zeker om concepten die al eens besproken waren in de lessen op een andere manier uitgelegd te krijgen. Dit is handig om een andere visie op een onderdeel te krijgen, waardoor het voor mij ook duidelijker werd hoe hetgeen ik leerde in de lessen ook gebruikt kan worden in een professionele omgeving. De reden waarom ik besloten heb om dit seminarie in verder detail te bespreken is omdat ik, als AON’er, in eerste instantie het nut van concepten zoals scrum of LEAN niet belangrijk vond. Na het seminarie bij te wonen is mijn visie hierop volledig veranderd. Ik heb zo ook ontdekt dat ik vaak belangrijke onderdelen van het ontwikkelingsproces over het hoofd zag en mij teveel focuste op het programmeren, niet op de voorafgaande stappen. In toekomstige projecten zal ik er dan ook zeker meer aandacht aan besteden om eerst de nodige analyse te doen. Mogelijk zal ik ook zelf gebruikmaken van concepten die besproken werden in het seminarie zoals de “double diamond”.',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
