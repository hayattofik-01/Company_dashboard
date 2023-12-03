import 'package:audit_web/core/layouts/responsive.dart';
import 'package:audit_web/core/style.dart';
import 'package:audit_web/features/locations_page/presentation/widgets/dropdown_formfield.dart';
import 'package:flutter/material.dart';

class FilterCard extends StatefulWidget {
  const FilterCard({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _FilterCardState createState() => _FilterCardState();
}

class _FilterCardState extends State<FilterCard> {
  bool isChecked = false; // Boolean variable to track the state of the checkbox

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: _buildColumnLayout(), // Use the column layout for mobile screens
      tablet: _buildRowLayout(), // Use the row layout for tablet screens
      desktop: _buildRowLayout(), // Use the row layout for desktop screens
    );
  }

  // Builds the row layout for tablet and desktop screens
  Widget _buildRowLayout() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // First input field: DropdownFormField for Brand
            const Expanded(
              flex: 1,
              child: DropdownFormField(
                hintText: 'Brand(Optional)',
                items: ['Option 1', 'Option 2', 'Option 3'],
              ),
            ),
            const SizedBox(width: 8.0),
            // Second input field: TextFormField for Alias
            Expanded(
              flex: 1,
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Alias',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(width: 8.0),
            // Third input field: TextFormField for Location
            Expanded(
              flex: 2,
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Location',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(width: 8.0),
            // Fourth input field: DropdownFormField for Type
            const Expanded(
              flex: 1,
              child: DropdownFormField(
                hintText: 'Type(Optional)',
                items: ['Option 1', 'Option 2', 'Option 3'],
              ),
            ),
            const SizedBox(width: 8.0),
            // Fifth input field: DropdownFormField for Market
            const Expanded(
              flex: 1,
              child: DropdownFormField(
                hintText: 'Market(Optional)',
                items:  ['Option 1', 'Option 2', 'Option 3'],
              ),
            ),
            const SizedBox(width: 10),
            // Checkbox for the "Corporate" option
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  'Corporate',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(width: 7),
                Checkbox(
                  value: true,
                  activeColor: primaryColor,
                  onChanged: (bool? value) {
                    // Handle checkbox state change
                  },
                ),
              ],
            ),
            const SizedBox(width: 8.0),
            // Button for creating an item
            SizedBox(
              width: 100,
              height: 50,
              child: ElevatedButton.icon(
                onPressed: () {
                  // Handle create button press
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 149, 211, 152),
                ),
                icon: const CircleAvatar(
                  radius: 10,
                  backgroundColor: secondaryColor,
                  child: Icon(
                    Icons.add,
                    color: Color.fromARGB(255, 149, 211, 152),
                    size: 20,
                  ),
                ),
                label: const Text('Create'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Builds the column layout for mobile screens
  Widget _buildColumnLayout() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // First input field: DropdownFormField for Brand
            const DropdownFormField(
              hintText: 'Brand(Optional)',
              items:  ['Option 1', 'Option 2', 'Option 3'],
            ),
            const SizedBox(height: 8.0),
            // Second input field: TextFormField for Alias
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Alias',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 8.0),
            // Third input field: TextFormField for Location
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Location',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 8.0),
            //Fourth input field: DropdownFormField for Type
            const DropdownFormField(
              hintText: 'Type(Optional)',
              items:  ['Option 1', 'Option 2', 'Option 3'],
            ),
            const SizedBox(height: 8.0),
            // Fifth input field: DropdownFormField for Market
            const DropdownFormField(
              hintText: 'Market(Optional)',
              items:  ['Option 1', 'Option 2', 'Option 3'],
            ),
            const SizedBox(height: 10),
            // Checkbox for the "Corporate" option
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  'Corporate',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(width: 7),
                Checkbox(
                  value: true,
                  activeColor: primaryColor,
                  onChanged: (bool? value) {
                    // Handle checkbox state change
                  },
                ),
              ],
            ),
            const SizedBox(height: 8.0),
            // Button for creating an item
            ElevatedButton.icon(
              onPressed: () {
                // Handle create button press
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 149, 211, 152),
              ),
              icon: const CircleAvatar(
                radius: 10,
                backgroundColor: secondaryColor,
                child: Icon(
                  Icons.add,
                  color: Color.fromARGB(255, 149, 211, 152),
                  size: 20,
                ),
              ),
              label: const Text('Create'),
            ),
          ],
        ),
      ),
    );
  }
}