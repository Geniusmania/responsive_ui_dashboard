import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return  Drawer(
      child:ListView(children: [
        DrawerHeader(
          child: Image.asset('assets/images/logo.png'),
        ),
        DrawerListTile(title: 'Dashboard', svgSrc: 'assets/icons/menu_dashbord.svg', press: (){}),
        DrawerListTile(title: 'Transaction', svgSrc: 'assets/icons/menu_tran.svg', press: (){}),
        DrawerListTile(title: 'Task', svgSrc: 'assets/icons/menu_task.svg', press: (){}), 
        DrawerListTile(title: 'Documents', svgSrc: 'assets/icons/menu_doc.svg', press: (){}),
        DrawerListTile(title: 'Store', svgSrc: 'assets/icons/menu_store.svg', press: (){}),
        DrawerListTile(title: 'Notification', svgSrc: 'assets/icons/menu_notification.svg', press: (){}),
        DrawerListTile(title: 'Profile', svgSrc: 'assets/icons/menu_profile.svg', press: (){}),
        DrawerListTile(title: 'Settings', svgSrc: 'assets/icons/menu_setting.svg', press: (){}),

      ],) ,
    );
  }
}


class DrawerListTile extends StatelessWidget {
  final String title;
  final String svgSrc;
 final VoidCallback press;
  const DrawerListTile({super.key, required this.title, required this.svgSrc, required this.press});

  @override
  Widget build(BuildContext context) {
    return  ListTile(
      onTap: (){},
      horizontalTitleGap: 5.0,
      minVerticalPadding: 0,
      leading: SvgPicture.asset(svgSrc,colorFilter: const ColorFilter.mode(Colors.white54, BlendMode.srcIn,),height: 16,),
      title: Text(title,style: const TextStyle( color: Colors.white54),), 

    );
  }
} 