import 'package:flutter/material.dart';
import 'package:youtube_like_app/component/contents.dart';
import 'package:youtube_like_app/component/filter_carousel.dart';
import 'package:youtube_like_app/component/header.dart';

final _filters = [
  'all',
  'music',
  'live',
  'game',
  'baseball',
  'cooking channel',
  'fitness',
];

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverList(
                delegate: SliverChildListDelegate([
                  const Header(),
                  const Divider(height: 0, color: Colors.black45),
                  FilterCarousel(
                    leading: const _Explore(),
                    filters: _filters,
                    trailingText: 'SEND FEEDBACK',
                  )
                ]),
              ),
            ];
          },
          body: const Contents(),
        ),
      ),
    );
  }
}

class _Explore extends StatelessWidget {
  const _Explore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        child: Row(
          children: const [
            Icon(Icons.auto_graph, color: Colors.black, size: 20),
            SizedBox(width: 4),
            Text(
              'Explore',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      onTap: () => {},
    );
  }
}
