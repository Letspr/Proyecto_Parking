import 'package:madpark/models/parking.dart';
import 'package:madpark/models/parking_service.dart';

/// Mi clase para conectarme a la BBDD del servidor
class DataService{
  /// Nos devuelve del servidor, todos los servicios que pueden tener los parkings.
  Future<List<ParkingService>> getParkingServices() async {
    List<ParkingService> serviceList=[];
    //Mockeo datos hasta tener listo el servidor.
    serviceList.add(ParkingService(code: "001", description: "primer servicio"));
    return serviceList;
  }
  /// Nos devuelve del servidor, todos los parkings del ayuntamiento de Madrid
  Future<List<Parking>> getParkings() async {
    List<Parking> parkingList=[];
    List<ParkingService> parkingList001 = [];
    parkingList001.add(ParkingService(code: "001", description: "primer servicio"));
    parkingList.add(Parking(code: "001", name: "primero", serviceList: parkingList001));
    return parkingList;
  }
}