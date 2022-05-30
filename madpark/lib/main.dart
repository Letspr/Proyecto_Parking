import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:madpark/Widgets/GeoButton.dart';
import 'package:madpark/models/parking_service.dart';
import 'package:madpark/services/data_service.dart';
//import 'package:http/http.dart' as http;



void main(){
  runApp(MaterialApp(
    home: Buscador(),
    debugShowCheckedModeBanner: false,
  ));
}
class Buscador extends StatefulWidget {
  @override
  BuscadorState createState() => BuscadorState();
}
class BuscadorState extends State<Buscador>{
  TextEditingController textController = TextEditingController();
  CameraPosition posicionInicial = CameraPosition(
    target: LatLng(40.41685671826404, -3.704516803189759),
    zoom: 16,
  );

void obtenerCoordenadas(){
//Todo: geolocalizar el dispositivo en el onPressed del icono
}


  @override
  Widget build (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("MadPark"),
        backgroundColor: Colors.indigoAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column (
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10,),
              GeoButton(onpress: obtenerCoordenadas),

                  TextField(
                    controller: textController,
                    decoration: InputDecoration(
                      labelText: "Dirección",
                      suffixIcon: Icon(Icons.search),
                      border: OutlineInputBorder (
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                        )
                    ),
            //TODO: colocar bien el Geobutton y el textfield

            Container(padding: const EdgeInsets.only(top:20), height: 400,
                child: GoogleMap(
                mapType: MapType.normal,
                initialCameraPosition: posicionInicial
                    // TODO: pintar posiciones de parkings en el mapa

            )),
            Column(children: [
              Row(children: [TextButton(onPressed: ShowServiceFilters, child: Text('Servicios'))],)
            ],)


          ],



        ),
      ),
    );
  }

  Future ShowServiceFilters() async {
    DataService dataService = DataService();
    List<ParkingService> servicios = await dataService.getParkingServices();
    List<Widget> widgetList = [];
    for(ParkingService servicio in servicios) {
      widgetList.add(getWidgetFilters(servicio));
    }
    AlertDialog dialog = AlertDialog(
      title: Text('Select animals'),
      contentPadding: EdgeInsets.only(top: 12.0),
      content: SingleChildScrollView(
        child: ListTileTheme(
          contentPadding: EdgeInsets.fromLTRB(14.0, 0.0, 24.0, 0.0),
          child: ListBody(
            children:  widgetList//widget.items.map(_buildItem).toList(),
          ),
        ),
      ),
      actions: <Widget>[

        FlatButton(
          child: Text('OK'),
          onPressed: (){
            Navigator.pop(context, []);
            //TODO: revisar
          }//_onSubmitTap,
        )
      ],
    );
    var result = showDialog(context: context, builder: (context) => dialog);
  }
  Widget getWidgetFilters(ParkingService service) {
    //final checked = _selectedValues.contains(item.value);
    return CheckboxListTile(
      value: false, //checked,
      title: Text(service.name),
      controlAffinity: ListTileControlAffinity.leading,
      onChanged: (checked) => {}//_onItemCheckedChange(item.value, checked),
      //TODO: determinar qué ocurre al activar y desactivar y configurar
      // TODO: la lista de servicios
    );
  }
}