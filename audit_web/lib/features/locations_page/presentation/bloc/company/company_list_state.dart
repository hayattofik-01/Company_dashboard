part of 'company_list_bloc.dart';

// Define the states
abstract class CompanyState {}

class CompanyInitialState extends CompanyState {}

class CompanyLoadingState extends CompanyState {}

class CompanyLoadedState extends CompanyState {
  final List<Company> companies;

  CompanyLoadedState(this.companies);
}

class CompanyErrorState extends CompanyState {
  final String errorMessage;

  CompanyErrorState(this.errorMessage);
}