import 'package:flutter/material.dart';
import 'package:youtube_like_app/component/contents.dart';
import 'package:youtube_like_app/component/filter_carousel.dart';
import 'package:youtube_like_app/component/header.dart';

final _filters = [
  'All',
  'Today',
  'Continue watching',
  'Unwatched',
  'Live',
  'Posts',
];

class Channel extends StatelessWidget {
  const Channel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (_, __) {
            return [
              SliverList(
                delegate: SliverChildListDelegate([
                  const Header(),
                  const _HorizontalChannelList(),
                  FilterCarousel(filters: _filters, trailingText: 'SETTINGS'),
                ]),
              )
            ];
          },
          body: const Contents(),
        ),
      ),
    );
  }
}

class _HorizontalChannelList extends StatelessWidget {
  const _HorizontalChannelList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: SizedBox(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                for (var i = 0; i < 10; i++) ...[const _ChannelIconItem()],
              ],
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(16),
          child: Text(
            'ALL',
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}

class _ChannelIconItem extends StatelessWidget {
  const _ChannelIconItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        width: 60,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/channel_samune.png', width: 50, height: 50),
            const SizedBox(height: 8),
            const Text('channle name',
                style: TextStyle(fontSize: 12),
                overflow: TextOverflow.ellipsis),
          ],
        ),
      ),
      onTap: () {},
    );
  }
}
