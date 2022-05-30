import '../models/parking.dart';
import '../models/parking_service.dart';

/// Mi clase para conectarme a la BBDD del servidor
class DataService{
  /// Nos devuelve del servidor, todos los servicios que pueden tener los parkings.
  Future<List<ParkingService>> getParkingServices() async {
    List<ParkingService> serviceList=[];
    //Mockeo datos hasta tener listo el servidor.
    serviceList.add(ParkingService(code: "001 ", name: "Pago en efectivo",));
    serviceList.add(ParkingService(code: "002 ", name: "Pago con tarjeta"));
    serviceList.add(ParkingService(code: "003 ", name: "Pago desde el móvil"));
    serviceList.add(ParkingService(code: "004 ", name: "Motocicleta"));
    serviceList.add(ParkingService(code: "005 ", name: "Acceso con tarjeta"));
    serviceList.add(ParkingService(code: "010 ", name: "Taller"));
    serviceList.add(ParkingService(code: "011 ", name: "Lavadero"));
    serviceList.add(ParkingService(code: "013 ", name: "Aseos"));
    serviceList.add(ParkingService(code: "015 ", name: "Cajero central presencial"));
    serviceList.add(ParkingService(code: "021 ", name: "Escaleras adaptadas"));
    serviceList.add(ParkingService(code: "023 ", name: "Ascensores con salida a calle"));
    serviceList.add(ParkingService(code: "024 ", name: "Aparcamiento para bicicletas"));
    serviceList.add(ParkingService(code: "025 ", name: "Recarga vh eléctrico"));


    return serviceList;
  }
  /// Nos devuelve del servidor, todos los parkings del ayuntamiento de Madrid
  Future<List<Parking>> getParkings() async {
    List<Parking> parkingList=[];

    List<ParkingService> serviceList90 = [];
    serviceList90.add(ParkingService(code: "013", name: "Aseos"));
    serviceList90.add(ParkingService(code: "023", name: "Ascensores con salida a la calle"));
    parkingList.add(Parking(id: 90, name: "MERCADO DE LA CEBADA",
        adress: "Plaza de la Cebada s/n Entrada de vehículos C/Toledo 77", areaCode: "28005 ",
        latitude: 40.410490, longitude: -3.709082, plazas: 206, serviceList: serviceList90));

    List<ParkingService> serviceList94 = [];
    serviceList94.add(ParkingService(code: "013", name: "Aseos"));
    parkingList.add(Parking(id: 94, name: "MERCADO SAN ANTÓN", adress: "Libertad",
        areaCode: "28004 ", latitude: 40.421693, longitude: -3.697468,
        plazas: 100,serviceList: serviceList94));

    List<ParkingService> serviceList95 = [];
    serviceList95.add(ParkingService(code: "023", name: "Ascensores con salida a la calle"));
    serviceList95.add(ParkingService(code: "013", name: "Aseos"));
    parkingList.add(Parking(id: 95, name: "ALCALA-SEVILLA", adress: "Calle de Alcalá",
        areaCode: "28014 ", latitude: 40.418258, longitude: -3.698411, plazas: 391,
        serviceList: serviceList94));

    return parkingList;
  }
}