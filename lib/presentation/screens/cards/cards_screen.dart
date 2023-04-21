import 'package:flutter/material.dart';

const cards = <Map<String, dynamic>>[
  {'elevation': 0.0, 'label': 'Elevation-0'},
  {'elevation': 1.0, 'label': 'Elevation-1'},
  {'elevation': 2.0, 'label': 'Elevation-2'},
  {'elevation': 3.0, 'label': 'Elevation-3'},
  {'elevation': 4.0, 'label': 'Elevation-4'},
  {'elevation': 5.0, 'label': 'Elevation-5'},

];

class CardsScreen extends StatelessWidget {
  static const String name = 'cardsscreen';
   
  const CardsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Cards Screen')
      ),
      body: _CardsView(),
    );
  }
}

class _CardsView extends StatelessWidget {
   _CardsView();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      
      child: Column(
        children: [
          ...cards.map((card) => _CustomCard1(label: card['label'], elevation: card['elevation']) ),
          ...cards.map((card) => _CardType2(label: card['label'], elevation: card['elevation']) ),
          ...cards.map((card) => _CardType3(label: card['label'], elevation: card['elevation']) ),
          SizedBox(height: 20,)
        ],
      ),
    );
  }
}

class _CustomCard1 extends StatelessWidget {

  final String label;
  final double elevation;

  const _CustomCard1({

    required this.label, 
    required this.elevation
    });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      child: Padding(
        padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                onPressed: (){},
                icon: Icon(Icons.more_vert)
              ),
            ),
            
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(label),
            ),

          ],
        ),
      )
    );
  }
}
class _CardType2 extends StatelessWidget {

  final String label;
  final double elevation;

  const _CardType2({

    required this.label, 
    required this.elevation
    });

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.elliptical(30, 40)),
        side: BorderSide(color: colors.tertiary)
      ),
      elevation: elevation,
      child: Padding(
        padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                onPressed: (){},
                icon: Icon(Icons.more_vert)
              ),
            ),
            
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(label),
            ),

          ],
        ),
      )
    );
  }
}

class _CardType3 extends StatelessWidget {
  final String label;
  final double elevation;

  const _CardType3({

    required this.label, 
    required this.elevation
    });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Card(
      clipBehavior: Clip.hardEdge,
      color: colors.surfaceVariant,
      elevation: elevation,
      child: Stack(
        children: [

          Image.network('https://picsum.photos/id/${elevation.toInt()}/600/350',
          height: 350,
          fit: BoxFit.fitHeight,),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white60,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20))
              ),
              child: IconButton(
                onPressed: (){},
                icon: Icon(Icons.more_vert)
              ),
            ),
          ),
          
          

        ],
      )
    );
  }
  
}