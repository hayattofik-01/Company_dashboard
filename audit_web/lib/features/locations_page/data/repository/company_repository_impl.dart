import 'package:audit_web/features/locations_page/data/datasource/company_remote_datasource.dart';
import 'package:audit_web/features/locations_page/domain/entities/company.dart';
import 'package:audit_web/features/locations_page/domain/repositories/company_repository.dart';

class CompanyRepositoryImpl implements CompanyRepository {
  final CompanyRemoteDataSource remoteDataSource;

  CompanyRepositoryImpl(this.remoteDataSource);

  @override
  Future<List<Company>> getCompanies() async {
    return await remoteDataSource.getCompanies();
  }
}