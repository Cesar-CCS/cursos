void main(){
  final windPlant = WindPlant( inicitialEnergy: 100);
  final nuclearPlant = NuclearPlant( energyLeft: 1000);

  print('wind: ${ chargePhone(windPlant) }');
  print('nuclear plant: ${ chargePhone(nuclearPlant) }');
}

double chargePhone( EnergyPlant plant) {
  if ( plant.energyLeft < 10 ) {
    throw Exception('Not enough energy');
  }

  return plant.energyLeft - 10;
}

enum PlantType { nuclear, wind, water }

//Implementacion de Una clase abstracta
abstract class EnergyPlant {
  double energyLeft;
  final PlantType type; //nucelar, wind, water

  EnergyPlant({
    required this.energyLeft,
    required this.type
  });

  void consumeEnergy( double amount ) {
    throw UnimplementedError();
  }
}

//Extends : Uso de la Herencia
class WindPlant extends EnergyPlant {
  WindPlant( { 
    required double inicitialEnergy
  }):
  super( energyLeft: inicitialEnergy ,
          type: PlantType.wind );

  @override
  void consumeEnergy( double amount ) {
    energyLeft -= amount;
  }
}

//Implements : Implementa una sobreescritura de una clase 
class NuclearPlant implements EnergyPlant {
  
  @override
  double energyLeft;
  @override
  final PlantType type = PlantType.nuclear;

  NuclearPlant({ 
    required this.energyLeft });

  @override
  void consumeEnergy( double amount ) {
    energyLeft -= (amount * 0.5);
  }
}