import 'package:audit_web/features/locations_page/domain/entities/company.dart';

class CompanyModel extends Company {
  CompanyModel({
    required String brand,
    required String alias,
    required String location,
    required String type,
    required String market,
    required bool isCorporate,
  }) : super(
          brand: brand,
          alias: alias,
          location: location,
          type: type,
          market: market,
          isCorporate: isCorporate,
        );

  factory CompanyModel.fromJson(Map<String, dynamic> json) {
    return CompanyModel(
      brand: json['brand'],
      alias: json['alias'],
      location: json['location'],
      type: json['type'],
      market: json['market'],
      isCorporate: json['isCorporate'],
    );
  }
}