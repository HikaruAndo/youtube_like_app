import 'package:flutter/material.dart';
import 'package:youtube_like_app/utils/disable_scroll_bounce.dart';

class Contents extends StatelessWidget {
  const Contents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async => await Future.delayed(const Duration(seconds: 3)),
      child: ListView(
        children: const [
          _Item(),
          SizedBox(height: 4),
          _ShortList(),
          SizedBox(height: 4),
          _Item(),
          SizedBox(height: 4),
          _ADS(),
        ],
      ),
    );
  }
}

class _Item extends StatelessWidget {
  const _Item({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.grey.shade50,
      child: InkWell(
        child: Column(
          children: [
            Image.asset('images/samune.png', fit: BoxFit.fill),
            ListTile(
              leading: Image.asset(
                'images/channel_samune.png',
                width: 40,
                height: 40,
              ),
              title: const Text('Mac Desktop'),
              subtitle: const Text('Apple 6.7K views・3 days ago'),
              trailing: const Icon(Icons.more_vert),
            )
          ],
        ),
        onTap: () => {},
      ),
    );
  }
}

class _ShortList extends StatelessWidget {
  const _ShortList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      height: 350,
      child: Container(
        color: Colors.grey.shade50,
        child: Column(
          children: [
            ListTile(
              leading: Image.asset(
                'images/youtube_short.png',
                width: 30,
                height: 30,
              ),
              title: const Text(
                'Short',
                style: TextStyle(fontSize: 18),
              ),
            ),
            Expanded(
              child: ScrollConfiguration(
                behavior: DisableScrollBounce(),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    SizedBox(width: 8),
                    _ShortItem(
                      image: 'images/youtube_short_samune.png',
                      title: 'Youtube Short\n3.9K views',
                    ),
                    SizedBox(width: 8),
                    _ShortItem(
                      image: 'images/youtube_short_samune.png',
                      title: 'Youtube Short\n3.9K views',
                    ),
                    SizedBox(width: 8),
                    _ShortItem(
                      image: 'images/youtube_short_samune.png',
                      title: 'Youtube Short\n3.9K views',
                    ),
                    SizedBox(width: 8),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ADS extends StatelessWidget {
  const _ADS({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 8),
        Image.asset('images/ads.png'),
        Container(
          decoration:
              BoxDecoration(color: Colors.blue.shade100.withOpacity(0.1)),
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          child: Row(
            children: [
              Text(
                'download',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.blue.shade600,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              const Icon(Icons.download, color: Colors.blue),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Youtube', style: TextStyle(fontSize: 16)),
                  const SizedBox(height: 4),
                  const Text(
                    'ADS',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black38,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Text(
                          'AD',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(width: 4),
                      const Text('4.1 ★'),
                      const SizedBox(width: 4),
                      const Text('free'),
                    ],
                  )
                ],
              ),
              const Spacer(),
              const Icon(Icons.more_vert),
            ],
          ),
        )
      ],
    );
  }
}

class _ShortItem extends StatelessWidget {
  const _ShortItem({
    Key? key,
    required this.image,
    required this.title,
  }) : super(key: key);

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: Stack(
        children: [
          Image.asset(image),
          const Positioned(
            top: 10,
            right: 10,
            child: Icon(Icons.more_vert, color: Colors.white),
          ),
          Positioned(
            left: 5,
            bottom: 0,
            child: Text(
              title,
              style: const TextStyle(color: Colors.white, fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
