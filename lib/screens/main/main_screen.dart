import 'package:flutter/material.dart';
import 'package:index/components/side_menu.dart';
import 'package:index/screens/Dashboard/dashboard_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: 
      
      Row(
     crossAxisAlignment: CrossAxisAlignment.start,
        children: [


          Expanded(
            flex: 1,
            child: SideMenu()),
          Expanded(
            flex: 5,
            child:DashboardScreen())
        ],
      )
      ),
    );
  }
}
