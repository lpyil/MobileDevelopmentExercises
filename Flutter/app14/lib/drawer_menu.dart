import 'package:flutter/material.dart';

class DrawerMenu extends StatefulWidget {
  const DrawerMenu({super.key});

  @override
  State<DrawerMenu> createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const Expanded(
            child: UserAccountsDrawerHeader(
              accountName: Text("name"),
              accountEmail: Text("mail"),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundColor: Colors.red,
                  child: Text("A"),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                const ListTile(
                  leading: Icon(Icons.abc_sharp),
                  title: Text("main page"),
                  trailing: Icon(Icons.ac_unit),
                ),
                InkWell(
                  onTap: () {},
                  splashColor: Colors.red,
                  child: const ListTile(
                    leading: Icon(Icons.abc_sharp),
                    title: Text("main page"),
                    trailing: Icon(Icons.ac_unit),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
