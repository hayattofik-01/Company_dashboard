import 'package:audit_web/features/locations_page/domain/entities/company.dart';

// This abstract class represents a repository for managing companies.
// Implementations of this class will provide methods for retrieving and manipulating company data.
abstract class CompanyRepository {
  // Retrieves a list of companies.
  // Returns a Future that completes with a list of Company objects.
  Future<List<Company>> getCompanies();
}