import 'package:audit_web/core/layouts/header.dart';
import 'package:audit_web/core/layouts/responsive.dart';
import 'package:flutter/material.dart';

import 'side_menu.dart';

class PageLayout extends StatelessWidget {
  const PageLayout({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      drawer: SideMenu(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // We want this side menu only for large screen
            if (Responsive.isDesktop(context))
              const Expanded(
                // default flex = 1
                // and it takes 1/6 part of the screen
                child: SideMenu(),
              ),
            Expanded(
              // It takes 5/6 part of the screen
              flex: 5,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Header(),
                    child,
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}