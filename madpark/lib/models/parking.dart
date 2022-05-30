import 'package:madpark/models/parking_service.dart';

class Parking {
  final int id;
  final String name;
  final String adress;
  final String areaCode;
  final double latitude;
  final double longitude;
  final int plazas;
  final List <ParkingService> serviceList;

  Parking ({required this.id, required this.name, required this.adress,
    required this.areaCode, required this.latitude,
    required this.longitude, required this.plazas, required this.serviceList}) ;
}