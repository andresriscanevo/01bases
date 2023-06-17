import 'package:flutter/material.dart';

const cards = <Map<String, dynamic>>[
  {'elevation': 0.0, 'label': 'elevation 0'},
  {'elevation': 1.0, 'label': 'elevation 1'},
  {'elevation': 2.0, 'label': 'elevation 2'},
  {'elevation': 3.0, 'label': 'elevation 3'},
  {'elevation': 4.0, 'label': 'elevation 4'},
  {'elevation': 5.0, 'label': 'elevation 5'},
];

class CardsScreen extends StatefulWidget {
  const CardsScreen({super.key});
  static const String name = 'cards_screen';
  @override
  State<CardsScreen> createState() => _CardsScreenState();
}

class _CardsScreenState extends State<CardsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Cards Screen')), body: _CardsView());
  }
}

class _CardsView extends StatelessWidget {
  const _CardsView();

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SingleChildScrollView(
        child: Column(
          children: [
            ...cards.map((card) =>
                _CardView(elevation: card['elevation'], label: card['label'])),
            ...cards.map((card) =>
                _CardView2(elevation: card['elevation'], label: card['label'])),
            ...cards.map((card) =>
                _CardView3(elevation: card['elevation'], label: card['label'])),
            ...cards.map((card) =>
                _CardView4(elevation: card['elevation'], label: card['label'])),
          ],
        ),
      ),
    );
  }
}

class _CardView extends StatelessWidget {
  final String label;
  final double elevation;
  const _CardView({required this.label, required this.elevation});
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(children: [
          Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: Icon(Icons.bike_scooter),
                onPressed: () {},
              )),
          Align(
            alignment: Alignment.bottomLeft,
            child: Text(label),
          )
        ]),
      ),
    );
  }
}

class _CardView2 extends StatelessWidget {
  final String label;
  final double elevation;
  const _CardView2({required this.label, required this.elevation});
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.amberAccent),
          borderRadius: BorderRadius.circular(12)),
      elevation: elevation,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(children: [
          Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: Icon(Icons.bike_scooter),
                onPressed: () {},
              )),
          Align(
            alignment: Alignment.bottomLeft,
            child: Text(label),
          )
        ]),
      ),
    );
  }
}

class _CardView3 extends StatelessWidget {
  final String label;
  final double elevation;
  const _CardView3({required this.label, required this.elevation});
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Card(
      color: colors.surface,
      shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.amberAccent),
          borderRadius: BorderRadius.circular(12)),
      elevation: elevation,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(children: [
          Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: Icon(Icons.bike_scooter),
                onPressed: () {},
              )),
          Align(
            alignment: Alignment.bottomLeft,
            child: Text(label),
          )
        ]),
      ),
    );
  }
}

class _CardView4 extends StatelessWidget {
  final String label;
  final double elevation;
  const _CardView4({required this.label, required this.elevation});
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Card(
      color: colors.surface,
      shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.amberAccent),
          borderRadius: BorderRadius.circular(12)),
      elevation: elevation,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Stack(children: [
          Image.network(
            'http://picsum.photos/id/${elevation.toInt()}/600/350',
            fit: BoxFit.cover,
            height: 250,
            alignment: Alignment.center,
          ),
          Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: Icon(Icons.bike_scooter, color: Colors.white),
                onPressed: () {},
              )),
          Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              label,
              style: TextStyle(color: Colors.white),
            ),
          )
        ]),
      ),
    );
  }
}
