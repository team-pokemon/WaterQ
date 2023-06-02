import 'package:flutter/material.dart';
import 'package:flutter_one/home_page.dart';
import 'package:flutter_one/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Root(),
    );
  }
}

class Root extends StatefulWidget {
  const Root({super.key});

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  int currentPage = 0;
  List<Widget> pages =const [HomePage(),ProfilePage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WaterQ',style: TextStyle(fontFamily: 'FontMain'),),
        centerTitle: true,
      ),
      body: pages[currentPage],
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: FloatingActionButton(
        
        onPressed: () {
          debugPrint('Float action button');
        },
        child: Icon(Icons.camera_alt),
        
      ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.search), label: 'Search'),
          NavigationDestination(icon: Icon(Icons.map), label: 'Map'),

        ],
        onDestinationSelected: (int index){
          setState(() {
            currentPage = index;
          });  
        },
        selectedIndex:currentPage,
      ),
    );
  }
}