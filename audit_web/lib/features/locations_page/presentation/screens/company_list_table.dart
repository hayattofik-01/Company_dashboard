import 'package:audit_web/core/style.dart';
import 'package:audit_web/features/locations_page/presentation/bloc/company/company_list_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CompanyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CompanyBloc, CompanyState>(
      builder: (context, state) {
        if (state is CompanyInitialState) {
          return Center(
            child: Text('No data'), // Display 'No data' if in initial state
          );
        } else if (state is CompanyLoadingState) {
          return Center(
            child: CircularProgressIndicator(), // Display a loading indicator if in loading state
          );
        } else if (state is CompanyLoadedState) {
          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), // Add border radius to the table
                border: Border.all(color: Colors.grey), // Add border color to the table
              ),
              headingRowColor: MaterialStateColor.resolveWith((states) => Colors.blue),
              // Set the heading row color to blue

              columns: [
                DataColumn(
                  label: Text('Brand'),
                ),
                DataColumn(
                  label: Text('Alias'),
                ),
                DataColumn(
                  label: Text('Location'),
                ),
                DataColumn(
                  label: Text('Type'),
                ),
                DataColumn(
                  label: Text('Market'),
                ),
                DataColumn(
                  label: Text('Is Corporate'),
                ),
                DataColumn(
                  label: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('Actions'),
                  ), // Add new column for actions
                ),
              ],
              rows: state.companies.asMap().entries.map((entry) {
                final index = entry.key;
                final company = entry.value;
                final isCorporate = company.isCorporate;

                final rowColor = index % 2 == 0 ? secondaryColor : bgColor; // Set alternating row color

                return DataRow(
                  color: MaterialStateColor.resolveWith((states) => rowColor),
                  // Set the color of the data row

                  cells: [
                    DataCell(Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(company.brand),
                    )),
                    DataCell(Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(company.alias),
                    )),
                    DataCell(Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(company.location),
                    )),
                    DataCell(Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(company.type),
                    )),
                    DataCell(Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(company.market),
                    )),
                    DataCell(
                      Checkbox(
                        value: isCorporate,
                        onChanged: (newValue) {
                          // Handle checkbox value change
                        },
                      ),
                    ),
                    DataCell(
                      Row(
                        children: [
                          Card(
                            child: IconButton(
                              icon: Icon(Icons.person),
                              onPressed: () {
                                // Handle profile icon button press
                              },
                            ),
                          ),
                          Card(
                            child: IconButton(
                              icon: Icon(Icons.edit),
                              onPressed: () {
                                // Handle edit icon button press
                              },
                            ),
                          ),
                          Card(
                            child: IconButton(
                              icon: Icon(Icons.delete),
                              onPressed: () {
                                // Handle delete icon button press
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              }).toList(),
            ),
          );
        } else if (state is CompanyErrorState) {
          return Center(
            child: Text(state.errorMessage), // Display the error message if in error state
          );
        } else {
          return Container(); // Return an empty container as default
        }
      },
    );
  }
}