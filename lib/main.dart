import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_like_app/routes.dart';
import 'package:youtube_like_app/view/channel.dart';
import 'package:youtube_like_app/view/home.dart';
import 'package:youtube_like_app/view/library.dart';
import 'package:youtube_like_app/view/short.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      onGenerateRoute: GenerateRoute.generateRoute,
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('images/youtube_short.png')),
              label: 'Short',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.add_circle_outline)),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('images/channel.png')),
              label: 'Subscriptions',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('images/library.png')),
              label: 'Library',
            ),
          ],
          onTap: (index) {},
        ),
        tabBuilder: (BuildContext context, int index) {
          return CupertinoTabView(
            routes: {
              '/': (_) => const Home(),
            },
            builder: ((_) {
              if (index == 0) return const Home();
              if (index == 1) return const Short();
              if (index == 3) return const Channel();
              return const Library();
            }),
          );
        },
      ),
    );
  }
}
