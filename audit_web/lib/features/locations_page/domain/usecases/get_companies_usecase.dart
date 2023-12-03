import 'package:audit_web/features/locations_page/domain/entities/company.dart';
import 'package:audit_web/features/locations_page/domain/repositories/company_repository.dart';

// This class represents a use case for retrieving companies.
// It encapsulates the logic for retrieving companies using a CompanyRepository.
class GetCompaniesUseCase {
  final CompanyRepository repository;

  GetCompaniesUseCase(this.repository);
  // Constructor for creating a GetCompaniesUseCase object.
  // It requires a CompanyRepository parameter to be provided.

  // Executes the use case.
  // Returns a Future that completes with a list of Company objects.
  Future<List<Company>> execute() async {
    return await repository.getCompanies();
    // Calls the getCompanies method of the repository to retrieve the list of companies.
    // Returns the result as a Future.
  }
}