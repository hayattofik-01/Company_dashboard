import 'package:audit_web/features/locations_page/presentation/bloc/company/company_list_bloc.dart';
import 'package:audit_web/features/locations_page/presentation/screens/dashboard_screeen.dart';
import 'package:flutter/material.dart';
import 'di.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

   await setupDependencyInjection();
  
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CompanyBloc>(
          create: (context) => CompanyBloc(sl()), // Initialize the CompanyBloc
        ),
        // Other bloc providers if needed
      ],
      child: MaterialApp(
        title: 'Your App',
        home: DashboardScreen(),
      ),
    );
  }
}