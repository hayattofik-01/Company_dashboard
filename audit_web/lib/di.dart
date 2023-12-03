import 'package:audit_web/features/locations_page/data/datasource/company_remote_datasource.dart';
import 'package:audit_web/features/locations_page/data/model/company_model.dart';
import 'package:audit_web/features/locations_page/data/repository/company_repository_impl.dart';
import 'package:audit_web/features/locations_page/domain/entities/company.dart';
import 'package:audit_web/features/locations_page/domain/repositories/company_repository.dart';
import 'package:audit_web/features/locations_page/domain/usecases/get_companies_usecase.dart';
import 'package:audit_web/features/locations_page/presentation/bloc/company/company_list_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;

final sl = GetIt.instance;

Future<void> setupDependencyInjection() async {
  // Register primitives
sl.registerLazySingleton<String>(() => 'example string');
sl.registerLazySingleton<bool>(() => true);
 // Register http.Client()
  sl.registerSingleton<http.Client>(http.Client());

  // Register models
sl.registerFactory<CompanyModel>(() => CompanyModel(
  brand: sl<String>(),
  alias: sl<String>(),
  location: sl<String>(),
  type: sl<String>(),
  market: sl<String>(),
  isCorporate: sl<bool>(),
));

// Register entities
sl.registerFactory<Company>(() => Company(
  brand: sl<String>(),
  alias: sl<String>(),
  location: sl<String>(),
  type: sl<String>(),
  market: sl<String>(),
  isCorporate: sl<bool>(),
));
  // Register repositories
  sl.registerLazySingleton<CompanyRepository>(
    () => CompanyRepositoryImpl(sl()),
  );

  // Register datasources
  sl.registerLazySingleton<CompanyRemoteDataSource>(
    () => CompanyRemoteDataSource(),
  );

  // Register use cases
  sl.registerLazySingleton<GetCompaniesUseCase>(
    () => GetCompaniesUseCase(sl.get<CompanyRepository>()),
  );

  // Register blocs
  sl.registerFactory<CompanyBloc>(
    () => CompanyBloc(sl.get<GetCompaniesUseCase>()),
  );
}