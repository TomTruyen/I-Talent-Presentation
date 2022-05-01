import 'package:flutter/material.dart';
import 'package:italent/widget/header.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: ScrollController(),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const <Widget>[
            Header(text: 'Over mij'),
            Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                '''Wie ben ik? Mijn naam is Tom Truyen en ik ben een laatstejaarsstudent full-stack applicatieontwikkeling aan de PXL. Ik ben zeer geïnteresseerd in programmeren en een gezonde levensstijl. In mijn vrije tijd leer ik graag andere programmeertalen en technieken die niet worden gezien in de les. Ik ben ook een echte ‘gymrat’, hier ben ik dus vaak te vinden. Een van mijn grootste talenten is mijn discipline. Als ik een doel voor ogen heb dan geef ik er ook alles voor om dit doel te bereiken. Ik werk zelf ook actiegericht in mijn projecten en hierdoor kan ik dus vlot omgaan met eventuele veranderingen. In de toekomst zou ik graag mijn droom verwezenlijken en dat is verhuizen naar Amerika. Het doel is dan ook om een job te vinden in Amerika vooraleer ik verhuis, zodat ik een comfortabel leven kan hebben terwijl ik mijn droom waarmaak. Om deze doelen te bereiken zal ik eerst de nodige ervaring moeten op te doen bij lokale bedrijven in België. Verder is het ook altijd een goed idee om nieuwe dingen te blijven leren en verder te specialiseren de dingen die ik al reeds ken.
              ''',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
