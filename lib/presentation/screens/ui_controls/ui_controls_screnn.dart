import 'package:flutter/material.dart';

class UIControlsScreen extends StatelessWidget {
  static const name = 'ui_controls_screen';
  const UIControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI Controls'),
      ),
      body: _UiControlsView(),
    );
  }
}

enum Transportation { car, plane, boat, submarin }

class _UiControlsView extends StatefulWidget {
  const _UiControlsView({
    super.key,
  });

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = true;
  Transportation selectedTransportation = Transportation.car;
  bool whantsBreackfast = false;
  bool whantslunch = false;
  bool whantdinner = true;
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          value: isDeveloper,
          title: const Text('Developer Mode'),
          subtitle: const Text('controles adicionales'),
          onChanged: (value) => setState(() {
            isDeveloper = !isDeveloper;
          }),
        ),
        ExpansionTile(
          title: const Text('vehiculo de transporte'),
          subtitle: Text('$selectedTransportation'),
          children: [
            RadioListTile(
              title: const Text('by Car'),
              subtitle: const Text('viaje en carro'),
              tileColor: Colors.black12,
              value: Transportation.car,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.car;
              }),
            ),
            RadioListTile(
              title: const Text('by Car'),
              subtitle: const Text('viaje en carro'),
              tileColor: Colors.green,
              value: Transportation.boat,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.boat;
              }),
            ),
            RadioListTile(
              title: const Text('by plane '),
              subtitle: const Text('viaje en avion '),
              tileColor: Colors.blueAccent,
              value: Transportation.plane,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.plane;
              }),
            ),
            RadioListTile(
              title: const Text('by Car'),
              subtitle: const Text('viaje en carro'),
              tileColor: Colors.amberAccent,
              value: Transportation.submarin,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.submarin;
              }),
            ),
          ],
        ),
        CheckboxListTile(
          title: const Text('Desayuno?'),
          value: whantsBreackfast,
          onChanged: (value) => setState(() {
            whantsBreackfast = !whantsBreackfast;
          }),
        ),
        CheckboxListTile(
          title: const Text('Almuerzo?'),
          value: whantslunch,
          onChanged: (value) => setState(() {
            whantslunch = !whantslunch;
          }),
        ),
        CheckboxListTile(
          title: const Text('Comida?'),
          value: whantdinner,
          onChanged: (value) => setState(() {
            whantdinner = !whantdinner;
          }),
        ),
      ],
    );
  }
}
