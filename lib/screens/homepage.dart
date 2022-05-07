import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:social_app_demo/provider/homepage.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomePageProvider>(
      create: (_) => HomePageProvider(),
      child: Consumer<HomePageProvider>(builder: (context, state, child) {
        return Scaffold(
          backgroundColor: Colors.white,
          bottomNavigationBar: BottomNavigationBar(
              selectedItemColor: Colors.black,
              unselectedItemColor: Colors.grey.shade400,
              currentIndex: state.currentIndex,
              enableFeedback: true,
              onTap: (i) => state.setCurrentIndex = i,
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.upload), label: ''),
                BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
                BottomNavigationBarItem(icon: Icon(Icons.explore), label: ''),
              ]),
          body: state.pages[state.currentIndex],
        );
      }),
    );
  }
}
