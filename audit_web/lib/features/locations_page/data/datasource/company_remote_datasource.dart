import 'package:audit_web/features/locations_page/data/model/company_model.dart';
import 'package:audit_web/features/locations_page/domain/entities/company.dart';

class CompanyRemoteDataSource {
  // Dummy data
  List<Map<String, dynamic>> dummyData = [
    {
      "brand": "Pizza Factory",
      "alias": "lone",
      "location": "123 Main Street, City 1, Country 1",
      "type": "Traditional",
      "market": "California",
      "isCorporate": true
    },
    {
      "brand": "Pizza Factory",
      "alias": "showlow",
      "location": "456 Elm Street, City 2, Country 2",
      "type":  "Traditional",
      "market": "Arizona",
      "isCorporate": false
    },
    {
      "brand": "Pizza Factory",
      "alias": "Emmet",
      "location": "789 Oak Street, City 3, Country 3",
      "type":  "Traditional",
      "market": "California",
      "isCorporate": true
    },
    {
      "brand": "Pizza Factory",
      "alias": "Live Oak",
      "location": "321 Pine Street, City 4, Country 4",
      "type":  "Traditional",
      "market": "California",
      "isCorporate": false
    },
    {
      "brand": "Pizza Factory",
      "alias": "Las Vegas",
      "location": "654 Cedar Street, City 5, Country 5",
      "type": "Traditional ",
      "market": "Arizona",
      "isCorporate": true
    }
  ];

  Future<List<Company>> getCompanies() async {
    // Simulate API delay
    await Future.delayed(Duration(seconds: 2));

    // Convert dummyData to List<Company>
    final List<Company> companies = dummyData
        .map((json) => CompanyModel.fromJson(json))
        .toList()
        .cast<Company>();

    return companies;
  }
}