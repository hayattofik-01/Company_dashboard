import 'package:flutter/material.dart';
import 'package:audit_web/core/utils/dotted_line_painter.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  List<String> menuItems = ["Users", "Roles", "Locations", "Notifications", "Assessment", "Assessment Schedule"];
  List<bool> isSelected = List.generate(8, (index) => false);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
  

    return Drawer(
      child: Column(
        children: [
          Row(
            children: [
              // Menu icon button
              Container(
                height: kToolbarHeight, // Set the height to match the app bar
                color: Colors.lightBlue, 
                width: screenWidth * 0.05, // Adjust the width based on screen width
                child: Center(
                  child: IconButton(
                    icon: const Icon(Icons.menu),
                    onPressed: () {
                      // Handle menu icon tap
                    },
                  ),
                ),
              ),
              // Configuration title
              Container(
                width: screenWidth * 0.116, // Adjust the width based on screen width
                height: kToolbarHeight, // Set the height to match the app bar
                color: const Color.fromARGB(255, 9, 101, 176), // Set the background color to dark blue
                child: Center(
                  child: Text(
                    "Configuration",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: screenWidth * 0.01, // Adjust the font size based on screen width
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: screenHeight * 0.05), // Adjust the height based on screen width
          Expanded(
            child: ListView.builder(
              itemCount: menuItems.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(left: screenWidth * 0.03), // Adjust the left padding based on screen width
                  child: CustomPaint(
                    painter: DottedLinePainter(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Menu item
                        ListTile(
                          title: Text(
                            menuItems[index],
                            style: TextStyle(
                              color: isSelected[index] ? Colors.blue : Colors.black,
                            ),
                          ),
                          onTap: () {
                            setState(() {
                              // can do the navigation logic here
                              isSelected = List.generate(8, (index) => false);
                              isSelected[index] = true;
                            });
                          },
                        ),
                        if (index == 0) // Display submenus for the second and third items
                          Padding(
                            padding: EdgeInsets.only(left: screenWidth * 0.02), // Adjust the left padding based on screen width
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Submenu 1
                                ListTile(
                                  title: const  Text("Roles"),
                                  onTap: () {
                                    // Handle submenu 1 tap
                                  },
                                ),
                                // Submenu 2
                                ListTile(
                                  title: const Text("Users"),
                                  onTap: () {
                                    // Handle submenu 2 tap
                                  },
                                ),
                              ],
                            ),
                          ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}