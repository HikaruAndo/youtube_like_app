import 'package:flutter/material.dart';

class FilterCarousel extends StatelessWidget {
  const FilterCarousel({
    Key? key,
    this.leading,
    required this.filters,
    required this.trailingText,
  }) : super(key: key);

  final Widget? leading;
  final List<String> filters;
  final String trailingText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: ListView(
        padding: const EdgeInsets.all(8),
        scrollDirection: Axis.horizontal,
        children: [
          if (leading != null) ...[
            leading!,
            const VerticalDivider(color: Colors.black45),
          ],
          for (final i in filters) ...[
            _RectangleCircleIconButton(title: i),
            const SizedBox(width: 4),
          ],
          TextButton(child: Text(trailingText), onPressed: () {}),
        ],
      ),
    );
  }
}

class _RectangleCircleIconButton extends StatelessWidget {
  const _RectangleCircleIconButton({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.black12),
          color: Colors.grey.shade200,
        ),
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
        child: Text(title),
      ),
    );
  }
}
