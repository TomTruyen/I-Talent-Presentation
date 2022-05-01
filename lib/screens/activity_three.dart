import 'package:flutter/material.dart';
import 'package:italent/widget/header.dart';

class ActivityThree extends StatelessWidget {
  const ActivityThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: ScrollController(),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Header(text: 'Flutter'),
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'De derde en laatste activiteit waarvoor ik gekozen heb een uitgebreid verslag te schrijven is een eigen extra activiteit: “Flutter”. Voor de start van deze activiteit was mijn doel om uiteindelijk genoeg te weten over Flutter om een mobiele applicatie te schrijven.',
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'Deze activiteit heb ik geleerde a.d.h.v. online bronnen zoals: de officiële documentatie, StackOverflow, YouTube,... Er was dus geen lector of spreker aanwezig. Ik heb wel geprobeerd een seminarie te volgen aan de PXL i.v.m. Flutter, maar deze is uiteindelijk niet doorgegaan wegens de corona maatregelen.',
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'Vooraleer ik begin met hoe ik Flutter heb geleerd, wil ik eerst uitleggen waarom ik besloten heb Flutter te leren. Ik ben altijd al geïnteresseerd geweest in mobiele applicaties, maar na een beetje onderzoek te doen hierover zijn er een aantal nadelen. Om te beginnen, om “native” te ontwikkelen is er nood aan verschillende dingen. Om voor Android te ontwikkelen moet er gebruikgemaakt worden van Kotlin of Java en voor iOS zal er gebruikgemaakt moeten worden van Swift of Objective-C. Dit betekent dus al dat er direct 2 talen zijn die geleerd moeten worden om voor beide besturingssystemen een applicatie te ontwikkelen. Een volgend probleem voor mij persoonlijk is dat voor iOS ontwikkeling er nood is aan XCode waarvoor op zijn beurt ook weer nood is aan een Mac OS toestel en eventueel een iPhone. Deze heb ik niet. Dan zou je denken, waarom dan niet gewoon Android ontwikkeling leren? Logisch toch? Klopt, maar ik wou ook verder kijken dan het heden, wat als ik een applicatie maak die ik ook beschikbaar wil maken voor iOS? Dan moet ik weer terug van het begin een applicatie maken. Na verder onderzoek ben ik dan uitgekomen bij een aantal opties: Cordova, Xamarin, Flutter en React Native. Cordova had ik al eens in het verleden gebruikt, omdat ik toen enkel HTML, CSS en Javascript kon, maar het gebruik van Cordova viel een beetje tegen toen. Zo werkte mijn applicatie niet zoals ik zou verwachten op alle schermgroottes en de verschillende versies van Android. Xamarin heb ik ook redelijk vroeg afgeschreven. Dit was vooral omdat het gebruikmaakt van .NET (C#). Deze taal kan ik wel, maar ik ben er geen liefhebber van. Xamarin werd ook uitgelegd in de lessen van .NET, dus om deze in mijn vrije tijd nog te leren leek mij niet zo interessant. Toen was het de keuze nog maken tussen Flutter (van Google) of React Native (van Facebook). In eerste instantie wou ik gebruikmaken van React Native, omdat ik hierover al veel gehoord had en ik had de skills ervoor (nl.: HTML, CSS, Javascript/React). Uiteindelijk heb ik toch besloten om Flutter te kiezen. Hiervoor waren 3 redenen. De eerste was dat Flutter geen gebruikmaakt van een “Javascript bridge”, maar een eigen C++ rendering engine om de een applicatie voor ieder platform te ontwikkelen, bijgevolg is Flutter in theorie ook sneller. De 2e reden is de grootte van een app. Flutter applicaties hebben een kleinere bestandsgrootte. Dit is voor mij een zeer belangrijk iets, aangezien ik graag klein, lightweight apps wil ontwikkelen die niet al te veel opslag in beslag nemen. Tenslotte maakt Flutter gebruik van “Dart” als programmeertaal. Als ik Dart moet beschrijven dan zou ik zeggen dat het een combinatie van C# en Javascript is. Deze taal was toen nieuw voor mij en ik vond het wel interessant, aangezien ik toch iets nieuws ging leren, om het dan ook te kiezen voor iets dat volledig nieuw was.',
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Image.asset('assets/activity_three_1.png'),
            ),
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'Het leren van Flutter ging redelijk vlot. Ik heb dit opgedeeld in 3 stappen: analyse, “tutorial hell” en project. In de eerste analyse stap begon ik met verdere research te doen over hoe Flutter in elkaar zit. Zo heb ik ontdekt waar packages voor Flutter beschikbaar zijn, namelijk: pub.dev. Dit kunnen wij vergelijken met de “npm package manager” dat React Native gebruikt. Ik heb hier recent nog mijn eigen package op gepubliceerd. Verder heb ik ook de officiële Flutter documentatie bekeken. Verder heb ik ontdekt dat Flutter gebruikmaakt van components genaamd “widgets”. Een simpel voorbeeld van zo een “widget” is het veel gebruikte “Text widget”.',
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Image.asset('assets/activity_three_2.png'),
            ),
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'Om het analyse onderdeel af te ronden heb ik ook gekeken naar de programmeertaal van Flutter, Dart. Ook dit heb ik gedaan door op een redelijk snelle manier over de officiële documentatie te gaan. Hierin heb ik vooral gelet op wat er verschillend is van andere “statically typed languages” zoals bijvoorbeeld: Java. Eén van de grootste verschillen is dat Dart geen interfaces heeft.',
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'Na het beëindigen van de analyse stap ben ik beland in de zogenaamde “tutorial hell”. Dit hield dus, zoals de naam het zegt, vooral in dat ik tutorials bekeek om hieruit te leren. De tutorial die mij het meest geholpen heeft is “Flutter & firebase app” door “The Net Ninja” op YouTube. Via deze tutorial leerde ik stapsgewijs hoe ik gebruik kon maken van Firebase in Flutter. Ook werd er de nodige aandacht besteed aan Flutter en Dart, waardoor ik als beginner alles kon volgen en snel kon bijleren. Andere bronnen die ik bezocht waren StackOverflow, open-source projecten en “Widget of the week” door het team van Flutter.',
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Image.asset('assets/activity_three_3.png'),
            ),
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'Tenslotte de laatste stap “project”. In deze stap begon ik aan het ontwikkelen van mijn eigen applicaties. Ik kan hierbij alvast vermelden dat ik op het moment van schrijven in het totaal 4 applicaties heb geschreven in Flutter, die ook beschikbaar zijn op de Google Play Store. In deze stap heb ik vooral gefocust op alles dat ik geleerd had in “tutorial hell”. Bij het eerste project heb ik nog veel moeten troubleshooten, maar dat minderde naarmate ik meer ervaring kreeg in het ontwikkelingsproces.',
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Image.asset(
                'assets/activity_three_4.png',
                width: MediaQuery.of(context).size.width,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'Om even terug te reflecteren, op toch wel mijn favoriete activiteit gedurende het I-Talent traject, Flutter leren is één van de beste dingen die ik had kunnen doen tijdens mijn vrije tijd. Ik heb hier al meerdere applicaties mee kunnen maken en het heeft er ook voor gezorgd dat mijn kennis op andere vlakken van mobiele ontwikkeling enorm gestegen is. Ik heb bijvoorbeeld leren werken met de Google Play Console, Firebase en UI/UX guidelines van mobiele applicaties. Natuurlijk was het geen simpel traject om af te leggen en al zeker niet omdat ik niemand had om vragen aan te stellen. Het was een hele periode van “trial and error” om tot dit punt te komen. Het grote voordeel van Flutter te leren is ook dat ik mij nu een volwaardige fullstack developer kan noemen, aangezien ik websites, backend systemen, databases EN mobiele applicaties kan maken. Het heeft mij ook het nut van geleerd van “clean code”, omdat in Flutter, met de grote hoeveelheid geneste “widgets” het anders soms te moeilijk wordt om alles nog te begrijpen. Ook een goede state management is zeer belangrijk in Flutter, dit heb ik ontdekt op de harde manier, waarbij mijn applicaties heel traag waren ik niet wist waarom, tot ik erachter kwam dat ik een oneindig lange loop had waarbij het mijn UI refreshten… Ook andere aspecten van code zoals design patterns heb ik geleerd dankzij Flutter. Een simpel voorbeeld hiervan is het “Singleton” design pattern. Ik ben dan ook zeker van plan in de toekomst projecten verder uit te werken in Flutter. Ik heb dit zelfs al gedaan bij mijn vakantiewerk! Daarbij heb ik al een applicatie mogen uitbouwen in Flutter nadat ik het geleerd had. Het is naar mijn mening gewoon één van de snelste manieren om een cross-platform mobiele applicatie op te bouwen. Ook al ken ik op dit moment andere frameworks (zoals React Native). Ik blijf Flutter verkiezen.',
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'Om nog af te ronden wil ik nog graag deze QR code meegeven met een link naar mijn Google Play pagina waarop de verschillende applicaties gevonden kunnen worden. Fitoryx, FitFood, MyCalendar & My Tasks zijn geschreven in Flutter. FitFood is mijn eerste Flutter applicatie ooit. Fitoryx is mijn meest recente en ook meest complexe. Deze maakt ook gebruik van Firebase.',
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Image.asset('assets/activity_three_5.png'),
            ),
          ],
        ),
      ),
    );
  }
}
