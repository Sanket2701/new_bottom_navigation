import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BottomNavigation(),
    );
  }
}

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;
  Color mainBlue = Color(0x2529787);
  Color mainBluex = Color(0x2699FB);
//  final List<Widget> _children = [
//
//  ];
  TextStyle navigationText = TextStyle(
    fontFamily: "NunitoSans",
    fontSize: 16,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    //   body: _children[_currentIndex],
       bottomNavigationBar: BottomNavigationBar(
         type: BottomNavigationBarType.fixed,
         backgroundColor: mainBluex,
         currentIndex: _currentIndex,
         selectedItemColor: Colors.white,
         unselectedItemColor: Colors.white30,
         onTap: (value) {
           setState(() {
             _currentIndex = value;
           });
         },
         items: [
           BottomNavigationBarItem(
             icon: FaIcon(FontAwesomeIcons.fileInvoiceDollar),
             title: Text('Invoices',
             style: navigationText,),
           ),
           BottomNavigationBarItem(
             icon: FaIcon(FontAwesomeIcons.truck),
             title: Text('Addresses',
             style: navigationText,),
           ),
           BottomNavigationBarItem(
             icon: FaIcon(FontAwesomeIcons.shoppingBag),
             title: Text('Purchases',
             style: navigationText,),
           ),
           BottomNavigationBarItem(
             icon: FaIcon(FontAwesomeIcons.chartLine),
             title: Text('Reports',
             style: navigationText,),
           )
         ],
       ),
    );
  }
}
