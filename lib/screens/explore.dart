import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:social_app_demo/provider/explore.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ExplorePageProvider>(
      create: (_) => ExplorePageProvider(),
      child: Consumer<ExplorePageProvider>(builder: (context, state, child) {
        return const Scaffold(
          backgroundColor: Colors.orange,
        );
      }),
    );
  }
}
