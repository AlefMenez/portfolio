import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: Contact',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.black),
              accountName: Text(
                'Alef Menezes',
                style: TextStyle(fontFamily: 'Inter'),
              ),
              accountEmail: Text('alefmenezes.works@gmail.com',
                  style: TextStyle(fontFamily: 'Inter')),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('AM.png'),
              ),
            ),
            ListTile(
              title: const Row(
                children: [
                  Icon(Icons.home),
                  SizedBox(
                    width: 8,
                  ),
                   Text('Home',
                      style: TextStyle(
                          fontFamily: 'Inter', fontWeight: FontWeight.bold)),
                ],
              ),
              selected: _selectedIndex == 0, hoverColor: Colors.grey,selectedColor: Color.fromRGBO(5, 2, 139, 1),
              onTap: () {
                _onItemTapped(0);

                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Row(
                children: [
                  Icon(Icons.info_rounded),
                  SizedBox(
                    width: 8,
                  ),
                   Text('About me',
                      style: TextStyle(
                          fontFamily: 'Inter', fontWeight: FontWeight.bold)),
                ],
              ),
              selected: _selectedIndex == 1,hoverColor: Colors.grey,selectedColor: Color.fromRGBO(5, 2, 139, 1),
              onTap: () {
                _onItemTapped(1);

                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Row(
                children: [
                   Icon(Icons.rebase_edit),
                  SizedBox(width: 8,),
                   Text('Projects',
                      style: TextStyle(
                          fontFamily: 'Inter', fontWeight: FontWeight.bold)),
                ],
              ),
              selected: _selectedIndex == 2, hoverColor: Colors.grey,selectedColor: Color.fromRGBO(5, 2, 139, 1),
              onTap: () {
                _onItemTapped(2);

                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Row(
                children: [
                   Icon(Icons.quick_contacts_dialer),
                  SizedBox(width: 8,),
                   Text('Contact',
                      style: TextStyle(
                          fontFamily: 'Inter', fontWeight: FontWeight.bold)),
                ],
              ),
              selected: _selectedIndex == 3, hoverColor: Colors.grey,selectedColor: Color.fromRGBO(5, 2, 139, 1),
              onTap: () {
                _onItemTapped(3);

                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
