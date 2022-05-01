import 'package:flutter/material.dart';
import 'package:italent/widget/header.dart';

class ActivityTwo extends StatelessWidget {
  const ActivityTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: ScrollController(),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Header(text: 'Devoteam: kubernetes cluster'),
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'De tweede activiteit waarover ik een uitgebreid verslag ga maken is: “Devoteam: Kubernetes cluster”. Ik heb mij ingeschreven voor dit seminarie omdat ik al een tijdje interesse had in het hele “Kubernetes concept”. Ik verwachte dan ook dat ik tijdens het seminarie hier de nodige uitleg over kon krijgen.',
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'Dit seminarie was één van de weinige seminaries die ik fysiek heb kunnen bijwonen. Het seminarie werd gegeven op 10 november 2021 op PXL. Dries van Bael, Google cloud engineer bij Devoteam, kwam een hands-on sessie geven in het thema van Kubernetes.',
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'Het seminarie kon opgedeeld worden in 4 delen: Docker, Kubernetes, workshop en Google Cloud. Het eerste deel, Docker, ging over de basisconcepten van Docker. Hierbij kregen we uitleg over hoe Docker werkt a.d.h.v. een powerpoint. Vervolgens kregen we stapsgewijs uitleg over Kubernetes. Per onderdeel van Kubernetes werd er verwacht dat we de bijbehorende oefening maakte. Deze werd dan vervolgens ook nog eens opgelost voor de klas door dhr. van Bael. Deze manier van werken zorgden ervoor dat wij op een zelfstandige manier Kubernetes konden leren. Hierdoor was er ook de mogelijkheid om één-op-één vragen te stellen. Het zorgde er verder ook voor dat de verschillende concepten makkelijker te onthouden waren aangezien we deze allemaal apart bekeken i.p.v. in één keer. Ook kon ik tijdens het seminarie aandachtiger volgen, omdat de theoretische delen onderbroken werden door de praktische oefeningen. Een aantal van de besproken concepten zijn: Pods, ReplicatSets, NodePort, ClusterIP, Load Balancing,... Een groot deel van deze concepten werden eerst uitgelegd a.d.h.v. een presentatie en vervolgens a.d.h.v de bijgeleverde GitHub repository werd alles nog eens in detail besproken.',
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Image.asset('assets/activity_two_1.png'),
            ),
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'Ieder concept had een bijbehorende oefening waarbij er d.m.v. Docker containers een Kubernetes cluster stapsgewijs opgezet werd. Het allereerste concept dat werd besproken was de “pod”. Dit is “the smallest deployable unit of computing deployable” m.a.w. kleiner dan dit kan niet. Een “pod” bevat een of meerdere Docker containers met een gedeelde opslag en netwerk.',
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Image.asset('assets/activity_two_2.png'),
            ),
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'Vervolgens werden “ReplicaSets” besproken. Deze kunnen worden gebruikt om “pods” te beheren. Ze zorgen ervoor dat er op ieder moment altijd het gegeven aantal “pods” actief is. Als bijvoorbeeld een “pod” zou crashen dan zorgt dit ervoor dat er direct een nieuwe opgestart wordt. Een verdere uitbreiding hierop die ook gezien werd is “horizontal pod autoscaling”. Dit betekent in simpele termen gewoon dat er a.d.h.v. “metrics” zoals CPU gebruik er “pods” toegevoegd of verwijderd worden. Verder kregen we nog uitleg over de verschillende services zoals “ClusterIP”, “NodePort” en “LoadBalancer”. Een “ClusterIP” is een standaard service dat ervoor zorgt dat er een interne “single point of access” is voor een groep “pods” m.a.w. de “pods” kunnen bereikt worden via één IP met één poort i.p.v. over meerdere verschillende IP’s en poorten. “NodePort”, daarentegen zorgt ervoor dat applicaties buiten de cluster een groep van pods kan bereiken door op iedere “pod” één poort open te zetten. In theorie is dat geen goed idee omdat het de service kwetsbaar maakt voor aanvallen. Daarom wordt er vaak geopteerd voor een “LoadBalancer”. Deze wordt vaak geïmplementeerd op services zoals Google Cloud. De “LoadBalancer” zorgt voor 1 poort waarop de applicatie bereikt kan worden. Om het seminarie af te ronden hebben wij nog een snelle uitleg gekregen over Google Cloud en hoe dat een “LoadBalancer” hierop kan worden ingesteld. Dit gebeurde a.d.h.v. een live demo en hebben wij dus zelf niet lokaal kunnen doen.',
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'Ik ben zeer tevreden dat ik dit seminarie had gekozen. Het was voor mij persoonlijk het seminarie dat mij het meeste interesseerde, omdat ik al een tijdje wou bijleren over Kubernetes. Zelf vond ik het moeilijk om Kubernetes te leren in mijn vrije tijd, omdat ik niet de nodige bronnen wist te vinden. Dankzij de uitleg van een professional was het veel makkelijker om de verschillende concepten te begrijpen. Het heeft dan ook aan al mijn wensen gedaan. Ik heb de hoofdbegrippen van Kubernetes geleerd en ook al eens een eerste “applicatie” ermee opgebouwd. Ik vond het ook interessant om de verschillende mogelijkheden van Kubernetes te ontdekken. Het hands-on principe had ook zijn voordelen, omdat ik op deze manier op mijn eigen tempo alle concepten kon doorlopen en leren begrijpen. Docker was voor mij al een bekend iets. Dit is deels dankzij de lessen van DevOps, maar ook het IT project waarbij ik meerdere Docker containers heb opgebouwd voor mijn team. Ik wist al op voorhand dat Kubernetes hier ook gebruik van zou maken, maar ik had niet verwacht het er volledig afhankelijk van is. Ik heb dan ook deze activiteit verder besproken, omdat dit eerder een typisch onderwerp is voor SNB-studenten en ik, als AON-student, hier veel minder mee in aanraking kom.  Of ik het in mijn eigen projecten zal gaan gebruiken, daar ben ik nog niet zeker van. Dit is niet omdat ik het niet interessant of nutteloos vind, maar vaak zijn de projecten die ik maak kleinschaliger en is er dus geen grote nood aan een grote cluster om alles te beheren. Meestal is enkel een simpele Docker container genoeg, maar wie weet kom ik er nog wel eens mee in aanraking als ik aan grotere projecten werk, dus ik zou het zeker nog niet afschrijven.',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
