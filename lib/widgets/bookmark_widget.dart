import 'package:flutter/material.dart';

abstract class _BookmarkBox extends StatelessWidget {
  final String title;
  final String category;
  final String region;
  final Color backgroundColor;
  final IconData icon;
  final VoidCallback onIconPressed;

  Widget _createInnerBox(String text, bool filled) => Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: filled ? null : Border.all(color: Colors.white, width: 2),
            color: filled ? Colors.white : Colors.transparent),
        child: Text(
          text,
          style: TextStyle(
              color: filled ? Colors.black : Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.bold),
        ),
      );

  const _BookmarkBox(
      {Key? key,
      required this.title,
      required this.category,
      required this.region,
      required this.backgroundColor,
      required this.icon,
      required this.onIconPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: backgroundColor, borderRadius: BorderRadius.circular(12)),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                title,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              const Expanded(child: SizedBox.shrink()),
              IconButton(
                  iconSize: 32,
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                  onPressed: onIconPressed,
                  icon: Icon(
                    icon,
                    color: Colors.white,
                  ))
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              _createInnerBox(category, true),
              const SizedBox(width: 8),
              _createInnerBox(region, false)
            ],
          )
        ],
      ),
    );
  }
}

class BookmarkAbleBox extends _BookmarkBox {
  BookmarkAbleBox(
      {Key? key,
      required super.title,
      required super.category,
      required super.region,
      required bool marked,
      required super.backgroundColor,
      required ValueChanged<bool> onMarked})
      : super(
            key: key,
            icon: marked ? Icons.bookmark : Icons.bookmark_border,
            onIconPressed: () => onMarked(!marked));
}

class BookmarkRemoveBox extends _BookmarkBox {
  const BookmarkRemoveBox(
      {Key? key,
      required super.title,
      required super.category,
      required super.region,
      required super.backgroundColor,
      required VoidCallback onRemoved})
      : super(key: key, icon: Icons.remove, onIconPressed: onRemoved);
}
