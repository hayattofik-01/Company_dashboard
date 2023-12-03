import 'package:audit_web/core/layouts/responsive.dart';
import 'package:audit_web/features/locations_page/presentation/widgets/dropdown_formfield.dart';
import 'package:flutter/material.dart';
class FilterCard extends StatefulWidget {
  const FilterCard({Key? key}) : super(key: key);

  @override
  _FilterCardState createState() => _FilterCardState();
}

class _FilterCardState extends State<FilterCard> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: _buildColumnLayout(),
      tablet: _buildRowLayout(), // You can customize the tablet layout if needed
      desktop: _buildRowLayout(),
    );
  }

  Widget _buildRowLayout() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 1,
              child: DropdownFormField(
                hintText: 'Brand(Optional)',
                items: const ['Option 1', 'Option 2', 'Option 3'],
              ),
            ),
            const SizedBox(width: 8.0),
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
            Expanded(
              flex: 2,
              child: TextFormField(
                decoration: const  InputDecoration(
                  hintText: 'Location',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(width: 8.0),
            Expanded(
              flex: 1,
              child: DropdownFormField(
                hintText: 'Type(Optional)',
                items: const ['Option 1', 'Option 2', 'Option 3'],
              ),
            ),
            const SizedBox(width: 8.0),
            Expanded(
              flex: 1,
              child: DropdownFormField(
                hintText: 'Market(Optional)',
                items: const ['Option 1', 'Option 2', 'Option 3'],
              ),
            ),
            const SizedBox(width: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  'Corporate',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color:  Colors.black,
                  ),
                ),
                const SizedBox(width:7),
                Checkbox(
                  value: true,
                   activeColor:  Colors.blue ,
                  onChanged: (bool? value) {
                    // Handle checkbox state change
                    
                  },
                ),
              ],
            ),
            const SizedBox(width: 8.0),
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
                  backgroundColor: Colors.white,
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

  Widget _buildColumnLayout() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DropdownFormField(
              hintText: 'Brand(Optional)',
              items: const  ['Option 1', 'Option 2', 'Option 3'],
            ),
            const SizedBox(height: 8.0),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Alias',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 8.0),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Location',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 8.0),
            DropdownFormField(
              hintText: 'Type(Optional)',
              items: const ['Option 1', 'Option 2', 'Option 3'],
            ),
            const SizedBox(height: 8.0),
            DropdownFormField(
              hintText: 'Market(Optional)',
              items: const ['Option 1', 'Option 2', 'Option 3'],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Corporate',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: isChecked ? Colors.blue : Colors.black,
                  ),
                ),
                const SizedBox(width: 5),
                Checkbox(
                  value: isChecked,
                  onChanged: (bool? value) {
                    // Handle checkbox state change
                  },
                ),
              ],
            ),
            const SizedBox(height: 8.0),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {
                  // Handle create button press
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 149, 211, 152),
                ),
                icon: const CircleAvatar(
                  radius: 10,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.add,
                    color:  Color.fromARGB(255, 149, 211, 152),
                    size: 10,
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
}

