import 'package:flutter/material.dart';
import 'package:plant/components/drawer_tile.dart';
import 'package:plant/pages/setting.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Column(
          children: [
            const Icon(
              Icons.lock_open,
              size: 50,
            ),
            Divider(),
            DrawerTile(
              titleName: 'Home',
              icon: Icons.home,
              onTap: () => Navigator.pop(context),
            ),
            DrawerTile(
                titleName: 'Setting',
                icon: Icons.settings,
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SettingPage()));
                }),
            const Spacer(),
            DrawerTile(
              titleName: 'LogOut',
              icon: Icons.logout,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
