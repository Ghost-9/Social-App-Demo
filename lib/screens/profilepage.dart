import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:social_app_demo/provider/profilepage.dart';
import 'package:social_app_demo/widgets/constants.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return ChangeNotifierProvider<ProfilePageProvider>(
      create: (_) => ProfilePageProvider(),
      child: Consumer<ProfilePageProvider>(builder: (context, state, child) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            centerTitle: true,
            title: Text(
              'User Profile',
              style: titleStyle,
            ),
          ),
          body: SingleChildScrollView(
              child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.grey.shade300,
                        radius: _size.aspectRatio * 120,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                                text: '\t\t\t20',
                                style: fontStyle,
                                children: [
                                  WidgetSpan(
                                      child: SizedBox(
                                    width: _size.width * 0.07,
                                  )),
                                  TextSpan(text: '1298', style: fontStyle),
                                  WidgetSpan(
                                      child: SizedBox(
                                    width: _size.width * 0.09,
                                  )),
                                  TextSpan(text: '120', style: fontStyle)
                                ]),
                          ),
                          RichText(
                            text: TextSpan(
                                text: '\tPosts\t',
                                style: fontStyle,
                                children: [
                                  TextSpan(
                                      text: '\tFollowers\t', style: fontStyle),
                                  TextSpan(
                                      text: '\tFollowing\t', style: fontStyle)
                                ]),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Divider(
                color: Colors.grey.shade500,
              ),
              GridView.builder(
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: _size.width * 0.4,
                    childAspectRatio: 1 / 4,
                    crossAxisSpacing: _size.width * 0.01,
                    mainAxisExtent: _size.height * 0.2,
                    mainAxisSpacing: _size.height * 0.005,
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                  primary: false,
                  shrinkWrap: true,
                  itemCount: 9,
                  itemBuilder: (_, index) {
                    return Container(
                      height: _size.height * 1,
                      width: _size.width * .02,
                      color: Colors.amber,
                    );
                  })
            ],
          )),
        );
      }),
    );
  }
}
