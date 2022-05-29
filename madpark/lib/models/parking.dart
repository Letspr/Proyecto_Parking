import 'package:madpark/models/parking_service.dart';

class Parking {
  final String code;
  final String name;
  final List <ParkingService> serviceList;

Parking ({required this.code, required this.name, required this.serviceList}) ;
}