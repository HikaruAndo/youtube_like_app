import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Offstage(offstage: true),
            const SizedBox(width: 8),
            Image.asset('images/youtube.png', width: 100, height: 60),
            const Spacer(),
            const _CircleEffectIconButton(icon: Icons.tv),
            const _CircleEffectIconButton(icon: Icons.notifications_none),
            const _CircleEffectIconButton(icon: Icons.search),
            Container(
              width: 30,
              height: 30,
              decoration: const BoxDecoration(
                color: Colors.green,
                shape: BoxShape.circle,
              ),
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    'Y',
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 8),
          ],
        ),
      ],
    );
  }
}

class _CircleEffectIconButton extends StatelessWidget {
  const _CircleEffectIconButton({Key? key, required this.icon})
      : super(key: key);

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.grey.shade200,
      shape: const CircleBorder(),
      clipBehavior: Clip.hardEdge,
      child: IconButton(
        icon: Icon(icon),
        color: Colors.black,
        onPressed: () => {},
      ),
    );
  }
}
