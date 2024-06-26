// import 'package:flutter/material.dart';
// import 'package:toura/UI/chat_screen/chat_page.dart';
// import 'package:toura/UI/home_screen/home_page.dart';
// import 'package:toura/UI/map_screen/map_page.dart';
// import 'package:toura/UI/todo_screen/todo_page.dart';

// enum CurrentPage { homePage, chatpage, mapPage, todoPage }

// class Toura extends StatefulWidget {
//   const Toura({super.key});

//   @override
//   State<Toura> createState() => _TouraState();
// }

// class _TouraState extends State<Toura> {
//   CurrentPage _currentPage = CurrentPage.homePage;
//   final _page = <Widget>[
//     const HomePage(),
//     const ChatPage(),
//     const MapPage(),
//     const TodoPage(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "Toura",
//       theme: ThemeData(
//         brightness: Brightness.dark,
//         primaryColor: Colors.blueGrey,
//         useMaterial3: true,
//       ),
//       home: Scaffold(
//         bottomNavigationBar: NavigationBar(
//           selectedIndex: _currentPage.index,
//           destinations: const [
//             NavigationDestination(icon: Icon(Icons.home), label: "Home"),
//             NavigationDestination(
//                 icon: Icon(Icons.chat_rounded), label: "ChatBot"),
//             NavigationDestination(icon: Icon(Icons.map), label: "Map"),
//             NavigationDestination(icon: Icon(Icons.list), label: "Todo"),
//           ],
//           onDestinationSelected: (value) {
//             setState(() {
//               _currentPage = CurrentPage.values.elementAt(value);
//             });
//           },
//         ),
//         body: _page[_currentPage.index],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
// import 'package:toura/UI/drawer_screen/drawer_page.dart';
import 'package:toura/UI/home_screen/app_bar_home.dart';
import 'package:toura/UI/home_screen/home_page.dart';

class Toura extends StatelessWidget {
  const Toura({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Toura',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.blueGrey,
        useMaterial3: true,
      ),
      home: const Scaffold(
        appBar: AppBarHome(),
        body: HomePage(),
      ),
    );
  }
}
