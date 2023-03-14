import 'package:flutter/material.dart';
import 'package:youtube_like_app/component/header.dart';

class Library extends StatelessWidget {
  const Library({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: Column(
          children: [
            Header(),
            Expanded(
              child: ListView(
                children: [
                  ConstrainedBox(
                    constraints: const BoxConstraints(maxHeight: 100),
                    child: Container(color: Colors.blue),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
