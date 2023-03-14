import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Short extends StatelessWidget {
  const Short({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: const [
            _Movie(),
            Padding(padding: EdgeInsets.all(16), child: _Contents()),
          ],
        ),
      ),
    );
  }
}

class _Movie extends StatefulWidget {
  const _Movie({Key? key}) : super(key: key);

  @override
  State<_Movie> createState() => __MovieState();
}

class __MovieState extends State<_Movie> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    _controller = VideoPlayerController.asset('assets/short_water.mov')
      ..initialize().then((_) => () => setState(() {}));
    _controller.setLooping(true);
    _controller.play();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return VideoPlayer(_controller);
  }
}

class _Contents extends StatelessWidget {
  const _Contents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        Align(
          alignment: Alignment.topRight,
          child: _TopIconsArea(),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: _RightIconsArea(),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: _BottomArea(),
        )
      ],
    );
  }
}

class _TopIconsArea extends StatelessWidget {
  const _TopIconsArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: const [
        Icon(Icons.search, color: Colors.white),
        SizedBox(width: 24),
        Icon(Icons.camera_alt, color: Colors.white),
      ],
    );
  }
}

class _RightIconsArea extends StatelessWidget {
  const _RightIconsArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const Icon(Icons.thumb_up, color: Colors.white),
        const SizedBox(height: 24),
        const Icon(Icons.thumb_down, color: Colors.white),
        const SizedBox(height: 24),
        const Icon(Icons.comment, color: Colors.white),
        const SizedBox(height: 24),
        const Icon(Icons.reply, color: Colors.white),
        const SizedBox(height: 24),
        const Icon(Icons.more_horiz, color: Colors.white),
        const SizedBox(height: 24),
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Text(
            'H',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}

class _BottomArea extends StatelessWidget {
  const _BottomArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Title',
            style: TextStyle(color: Colors.white, fontSize: 16)),
        const SizedBox(height: 8),
        Row(
          children: [
            Image.asset(
              'images/channel_samune.png',
              width: 40,
              height: 40,
            ),
            const SizedBox(width: 8),
            const Text(
              'channel name',
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
            const SizedBox(width: 8),
            TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
              ),
              onPressed: () {},
              child: const Text(
                'SUBSCRIBE',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
