import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itnun/constants.dart';

abstract class _BookmarkBox extends StatelessWidget {
  final String title;
  final String filled;
  final String? outlined;
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
      required this.filled,
      this.outlined,
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
              _createInnerBox(filled, true),
              if (outlined != null) ...[
                const SizedBox(width: 8),
                _createInnerBox(outlined!, false)
              ]
            ],
          )
        ],
      ),
    );
  }
}

abstract class _BookmarkAbleBox extends _BookmarkBox {
  final VoidCallback onPressed;

  _BookmarkAbleBox(
      {Key? key,
      required super.title,
      required super.filled,
       super.outlined,
      required bool marked,
      required super.backgroundColor,
      required ValueChanged<bool> onMarked,
      required this.onPressed})
      : super(
            key: key,
            icon: marked ? Icons.bookmark : Icons.bookmark_border,
            onIconPressed: () => onMarked(!marked));

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: super.build(context),
    );
  }
}

class CheapMarketBookmarkBox extends _BookmarkAbleBox {
  CheapMarketBookmarkBox(
      {Key? key,
      required super.title,
      required String category,
      required String region,
      required super.marked,
      required super.onMarked})
      : super(
            key: key,
            filled: category,
            outlined: region,
            backgroundColor: cheapMarketColor,
            onPressed: () => Get.toNamed("/search/cheap/detail"));
}

class TotalBookmarkBox extends _BookmarkAbleBox {
  TotalBookmarkBox(
      {Key? key,
      required super.title,
      required String category,
      required String region,
      required super.marked,
      required super.onMarked})
      : super(
            key: key,
            filled: category,
            outlined: region,
            backgroundColor: appColor,
            onPressed: () => Get.toNamed("/search/total/detail"));
}

class HireBookmarkBox extends _BookmarkAbleBox {
  HireBookmarkBox(
      {Key? key,
      required super.title,
      required String dueDate,
      required String region,
      required super.marked,
      required super.onMarked})
      : super(
            key: key,
            filled: dueDate,
            outlined: region,
            backgroundColor: const Color(0xFF6721FC),
            onPressed: () => Get.toNamed("/search/hire/detail"));
}

class SpaceBookmarkBox extends _BookmarkAbleBox {
  SpaceBookmarkBox(
      {Key? key,
      required super.title,
      required String region,
      required super.marked,
      required super.onMarked})
      : super(
            key: key,
            filled: region,
            backgroundColor: const Color(0xFF4B3CF8),
            onPressed: () => Get.toNamed("/search/space/detail"));
}

class BookmarkRemoveBox extends _BookmarkBox {
  const BookmarkRemoveBox(
      {Key? key,
      required super.title,
      required super.filled,
      super.outlined,
      required super.backgroundColor,
      required VoidCallback onRemoved})
      : super(key: key, icon: Icons.remove, onIconPressed: onRemoved);
}
