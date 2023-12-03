import 'package:equatable/equatable.dart';

class Company extends Equatable {
  final String brand;
  final String alias;
  final String location;
  final String type;
  final String market;
  final bool isCorporate;

  const Company({
    required this.brand,
    required this.alias,
    required this.location,
    required this.type,
    required this.market,
    required this.isCorporate,
  });

  @override
  List<Object?> get props => [brand, alias, location, type, market, isCorporate];
  // The 'props' getter is overridden from the 'Equatable' class
  // It returns a list of properties that are used to determine the equality of objects of this class

  // Constructor for creating a Company object
  // It requires the following parameters: brand, alias, location, type, market, and isCorporate

  // The 'brand' property represents the brand of the company
  // The 'alias' property represents the alias or alternate name of the company
  // The 'location' property represents the location of the company
  // The 'type' property represents the type or category of the company
  // The 'market' property represents the market or industry of the company
  // The 'isCorporate' property indicates whether the company is a corporate entity

}