import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:madpark/models/parking.dart';
import 'package:madpark/models/parking_service.dart';
import 'package:madpark/services/data_service.dart';


void main (){
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


@override
Widget build (BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      centerTitle: true,
      title: Text("MadPark"),
      backgroundColor: Colors.indigoAccent,
    ),
    body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column (
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.location_on_outlined, size: 72, color: Colors.indigoAccent,),
                onPressed: () {},
//Todo: geolocalizar el dispositivo en el onPressed del icono
                ),
              TextField()
            ],
          )

        ],
      ),
    ),
  );
}
}