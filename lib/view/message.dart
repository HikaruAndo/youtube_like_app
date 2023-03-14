import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  const Message({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          _MessageCard(),
          _MessageCard(),
          _MessageCard(),
          _MessageCard(),
        ],
      ),
    );
  }
}

class _MessageCard extends StatelessWidget {
  const _MessageCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const FlutterLogo(size: 56),
        title: const Text('こんにちは'),
        subtitle: const Text('こんばんわ'),
        onTap: () => {Navigator.of(context).pushNamed('/message_detail')},
      ),
    );
  }
}
