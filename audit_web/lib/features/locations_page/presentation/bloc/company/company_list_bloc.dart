import 'package:bloc/bloc.dart';
import 'package:audit_web/features/locations_page/domain/entities/company.dart';
import 'package:audit_web/features/locations_page/domain/usecases/get_companies_usecase.dart';

part 'company_list_state.dart';
part 'company_list_event.dart';

class CompanyBloc extends Bloc<CompanyEvent, CompanyState> {
  final GetCompaniesUseCase getCompaniesUseCase;

  CompanyBloc(this.getCompaniesUseCase) : super(CompanyInitialState()) {
    on<FetchCompaniesEvent>(_fetchCompanies);
    add(FetchCompaniesEvent());
  }

  void _fetchCompanies(FetchCompaniesEvent event, Emitter<CompanyState> emit) async {
    emit(CompanyLoadingState()); // Emit CompanyLoadingState to indicate fetching is in progress

    try {
      final companies = await getCompaniesUseCase.execute(); // Fetch companies using GetCompaniesUseCase

      emit(CompanyLoadedState(companies)); // Emit CompanyLoadedState with retrieved companies
    } catch (e) {
      emit(CompanyErrorState('Failed to load companies')); // Emit CompanyErrorState if an error occurs
    }
  }
}