import 'package:audit_web/core/layouts/page_layouts.dart';
import 'package:audit_web/features/locations_page/presentation/widgets/filter_card.dart';
import 'package:audit_web/features/locations_page/presentation/widgets/search_bar.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
 
  const DashboardScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageLayout(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:  const EdgeInsets.all(6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                
             
                      const Padding(
                        padding:  EdgeInsets.only(top: 20),
                        child:  SearchInfo(),
                      ) ,
                      const SizedBox(height: 10),
                         FilterCard()
                      



                      ]
                          ),
                        
                    
                    ),
                  
              
              ],),
          

        

    ));
  }
}