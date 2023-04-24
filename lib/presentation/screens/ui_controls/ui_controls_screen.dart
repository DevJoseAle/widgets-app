import 'package:flutter/material.dart';

class UiControlScreen extends StatelessWidget {
  static const name = 'uicontrolsscreen';

  const UiControlScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('UI Controls'),
        ),
        body: _UiControlsView());
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView({
    super.key,
  });

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transportation { car, plane, boat, submarine, cicle }

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = false;
  Transportation selectedTransportation = Transportation.car;

  bool wantsBreakfast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;
  
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: Text('Developer Mode Android'),
          subtitle: Text('Additional Controls'),
          value: isDeveloper,
          onChanged: (value) {
            isDeveloper = !isDeveloper;
            setState(() {});
          },
        ),
        ExpansionTile(
          leading: Icon(Icons.car_repair),
          title: Text('Vehiculo de transporte'),
          subtitle: Text('$selectedTransportation'),
          children: [
            RadioListTile(
                title: Text('Car'),
                subtitle: Text('Viajar en carro'),
                value: Transportation.car,
                groupValue: selectedTransportation,
                onChanged: (value) => setState(() {
                      selectedTransportation = Transportation.car;
                    })),
            RadioListTile(
                title: Text('boat'),
                subtitle: Text('Viajar en Barco'),
                value: Transportation.boat,
                groupValue: selectedTransportation,
                onChanged: (value) => setState(() {
                      selectedTransportation = Transportation.boat;
                    })),
            RadioListTile(
                title: Text('Cicle'),
                subtitle: Text('Viajar en Bicicleta'),
                value: Transportation.cicle,
                groupValue: selectedTransportation,
                onChanged: (value) => setState(() {
                      selectedTransportation = Transportation.cicle;
                    })),
            RadioListTile(
                value: Transportation.plane,
                title: Text('Plane'),
                subtitle: Text('Viajar en Avion'),
                groupValue: selectedTransportation,
                onChanged: (value) => setState(() {
                      selectedTransportation = Transportation.plane;
                    })),
            RadioListTile(
                value: Transportation.submarine,
                title: Text('Submarine'),
                subtitle: Text('Viajar en Submarino'),
                groupValue: selectedTransportation,
                onChanged: (value) => setState(() {
                      selectedTransportation = Transportation.submarine;
                    })),
          ],
        ),

        CheckboxListTile(
          title: Text('Desea Desayuno'),
          subtitle: Text('Desayuno incluido'),
          value: wantsBreakfast, 
          onChanged: (value)=> setState(() {
            wantsBreakfast = !wantsBreakfast;
          })),
        CheckboxListTile(
          title: Text('Desea Almuerzo'),
          subtitle: Text('Alumerzo incluido'),
          value: wantsLunch, 
          onChanged: (value)=> setState(() {
            wantsLunch = !wantsLunch;
          })),
        CheckboxListTile(
          title: Text('Desea Cena'),
          subtitle: Text('Cena incluido'),
          value: wantsDinner, 
          onChanged: (value)=> setState(() {
            wantsDinner = !wantsDinner;
          })),
      ],
    );
  }
}
